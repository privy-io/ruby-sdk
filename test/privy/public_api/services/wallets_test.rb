# frozen_string_literal: true

require_relative "../../test_helper"

class Privy::Services::WalletsTest < Minitest::Test
  extend Minitest::Serial
  include WebMock::API

  BASE_URL = "https://api.staging.privy.io"

  def before_all
    super
    WebMock.enable!
  end

  def after_all
    WebMock.disable!
    super
  end

  def teardown
    WebMock.reset!
    super
  end

  def build_client
    Privy::PrivyClient.new(app_id: "app-abc", app_secret: "secret", environment: :staging)
  end

  def wallet_response_body(**overrides)
    {
      id: "w-1",
      additional_signers: [],
      address: "0x0000000000000000000000000000000000000001",
      chain_type: "ethereum",
      created_at: 0,
      policy_ids: []
    }.merge(overrides).to_json
  end

  def stub_json(method, url, body:)
    stub_request(method, url).to_return(
      status: 200,
      body: body,
      headers: {"content-type" => "application/json"}
    )
  end

  def parse_json_body(request)
    JSON.parse(request.body)
  end

  def hpke_encrypt_for_recipient(recipient_public_key_base64, plaintext)
    hpke = HPKE.new(HPKE::DHKEM_P256_HKDF_SHA256, HPKE::HKDF_SHA256, HPKE::CHACHA20_POLY1305)
    recipient_public_key = OpenSSL::PKey.read(Base64.strict_decode64(recipient_public_key_base64))
    encrypted = hpke.setup_base_s(recipient_public_key, "")
    ciphertext = encrypted.fetch(:context_s).seal("", plaintext)

    {
      encryption_type: "HPKE",
      encapsulated_key: Base64.strict_encode64(encrypted.fetch(:enc)),
      ciphertext: Base64.strict_encode64(ciphertext)
    }.to_json
  end

  # --- create -----------------------------------------------------------------

  def test_create_without_idempotency_sends_no_idempotency_header
    stub_json(:post, "#{BASE_URL}/v1/wallets", body: wallet_response_body)
    build_client.wallets.create(wallet_create_params: {chain_type: :ethereum})
    assert_requested(:post, "#{BASE_URL}/v1/wallets") do |req|
      refute(req.headers.key?("Privy-Idempotency-Key"))
    end
  end

  def test_create_forwards_idempotency_key_as_header
    stub_json(:post, "#{BASE_URL}/v1/wallets", body: wallet_response_body)
    build_client.wallets.create(wallet_create_params: {chain_type: :ethereum}, idempotency_key: "idem-1")
    assert_requested(:post, "#{BASE_URL}/v1/wallets") do |req|
      assert_equal("idem-1", req.headers["Privy-Idempotency-Key"])
    end
  end

  # --- import ----------------------------------------------------------------

  def test_import_initializes_encrypts_and_submits_wallet_entropy
    recipient = Privy::Cryptography::HpkeRecipient.new
    stub_json(
      :post,
      "#{BASE_URL}/v1/wallets/import/init",
      body: {
        encryption_type: "HPKE",
        encryption_public_key: Base64.strict_encode64(recipient.public_key_spki)
      }.to_json
    )
    stub_json(:post, "#{BASE_URL}/v1/wallets/import/submit", body: wallet_response_body(imported_at: 1.0))

    response = build_client.wallets.import(
      wallet: {
        address: "0x0000000000000000000000000000000000000001",
        chain_type: :ethereum,
        entropy_type: :"private-key",
        private_key: "0x000102ff"
      },
      display_name: "Imported wallet"
    )

    assert_equal("w-1", response.id)
    assert_requested(:post, "#{BASE_URL}/v1/wallets/import/init") do |req|
      body = parse_json_body(req)
      refute(body.key?("private_key"))
      assert_equal("HPKE", body.fetch("encryption_type"))
      assert_equal("private-key", body.fetch("entropy_type"))
    end
    assert_requested(:post, "#{BASE_URL}/v1/wallets/import/submit") do |req|
      body = parse_json_body(req)
      wallet = body.fetch("wallet")
      refute(wallet.key?("private_key"))
      assert_equal("Imported wallet", body.fetch("display_name"))
      assert_equal("HPKE", wallet.fetch("encryption_type"))

      decrypted = recipient.decrypt(
        Base64.strict_decode64(wallet.fetch("encapsulated_key")),
        Base64.strict_decode64(wallet.fetch("ciphertext"))
      )
      assert_equal([0, 1, 2, 255].pack("C*"), decrypted)
    end
  end

  def test_import_rejects_non_hpke_init_response
    stub_json(
      :post,
      "#{BASE_URL}/v1/wallets/import/init",
      body: {
        encryption_type: "OTHER",
        encryption_public_key: Base64.strict_encode64(Privy::Cryptography::HpkeRecipient.new.public_key_spki)
      }.to_json
    )

    error = assert_raises(Privy::Errors::Error) do
      build_client.wallets.import(
        wallet: {
          address: "0x0000000000000000000000000000000000000001",
          chain_type: :ethereum,
          entropy_type: :"private-key",
          private_key: "0x000102ff"
        }
      )
    end

    assert_equal("Invalid encryption type: OTHER", error.message)
  end

  # --- update -----------------------------------------------------------------

  def test_update_without_auth_context_sends_no_signature_header
    stub_json(:patch, "#{BASE_URL}/v1/wallets/w-1", body: wallet_response_body(display_name: "new"))
    build_client.wallets.update("w-1", wallet_update_params: {display_name: "new"})
    assert_requested(:patch, "#{BASE_URL}/v1/wallets/w-1") do |req|
      refute(req.headers.key?("Privy-Authorization-Signature"))
    end
  end

  def test_update_with_auth_context_signs_canonical_payload
    kp = Privy::Cryptography.generate_p256_key_pair
    stub_json(:patch, "#{BASE_URL}/v1/wallets/w-1", body: wallet_response_body(display_name: "new"))

    build_client.wallets.update(
      "w-1",
      wallet_update_params: {display_name: "new"},
      authorization_context: Privy::Authorization::AuthorizationContext.build(
        authorization_private_keys: [kp.private_key]
      )
    )

    captured_sig = nil
    captured_expiry = nil
    assert_requested(:patch, "#{BASE_URL}/v1/wallets/w-1") do |req|
      captured_sig = req.headers["Privy-Authorization-Signature"]
      captured_expiry = req.headers["Privy-Request-Expiry"]
    end

    expected_payload = Privy::Authorization.format_request_for_authorization_signature(
      Privy::Authorization::WalletApiRequestSignatureInput.build(
        method: :patch,
        url: "#{BASE_URL}/v1/wallets/w-1",
        body: {display_name: "new"},
        headers: {
          "privy-app-id" => "app-abc",
          "privy-request-expiry" => captured_expiry
        }
      )
    )
    pub = OpenSSL::PKey.read(kp.public_key.unpack1("m0"))
    digest = OpenSSL::Digest.new("SHA256").digest(expected_payload)
    assert(
      pub.dsa_verify_asn1(digest, captured_sig.unpack1("m0")),
      "signature should verify against canonical payload"
    )
  end

  # --- rpc --------------------------------------------------------------------

  RPC_RESPONSE_BODY = {
    method: "personal_sign",
    data: {signature: "0xdeadbeef", encoding: "hex"}
  }.to_json

  def rpc_body
    {
      method: "personal_sign",
      chain_type: "ethereum",
      params: {message: "hi", encoding: "utf-8"}
    }
  end

  def test_rpc_without_extras_sends_no_auth_or_idempotency_header
    stub_json(:post, "#{BASE_URL}/v1/wallets/w-1/rpc", body: RPC_RESPONSE_BODY)
    build_client.wallets.rpc("w-1", wallet_rpc_request_body: rpc_body)
    assert_requested(:post, "#{BASE_URL}/v1/wallets/w-1/rpc") do |req|
      refute(req.headers.key?("Privy-Authorization-Signature"))
      refute(req.headers.key?("Privy-Idempotency-Key"))
    end
  end

  def test_rpc_with_idempotency_key_only_sends_idempotency_header
    stub_json(:post, "#{BASE_URL}/v1/wallets/w-1/rpc", body: RPC_RESPONSE_BODY)
    build_client.wallets.rpc("w-1", wallet_rpc_request_body: rpc_body, idempotency_key: "idem-rpc")
    assert_requested(:post, "#{BASE_URL}/v1/wallets/w-1/rpc") do |req|
      assert_equal("idem-rpc", req.headers["Privy-Idempotency-Key"])
      refute(req.headers.key?("Privy-Authorization-Signature"))
    end
  end

  def test_rpc_with_auth_context_signs_body_and_sends_sig_header
    kp = Privy::Cryptography.generate_p256_key_pair
    stub_json(:post, "#{BASE_URL}/v1/wallets/w-1/rpc", body: RPC_RESPONSE_BODY)

    build_client.wallets.rpc(
      "w-1",
      wallet_rpc_request_body: rpc_body,
      authorization_context: Privy::Authorization::AuthorizationContext.build(
        authorization_private_keys: [kp.private_key]
      )
    )

    captured_sig = nil
    captured_expiry = nil
    assert_requested(:post, "#{BASE_URL}/v1/wallets/w-1/rpc") do |req|
      captured_sig = req.headers["Privy-Authorization-Signature"]
      captured_expiry = req.headers["Privy-Request-Expiry"]
      refute(req.headers.key?("Privy-Idempotency-Key"))
    end

    expected_payload = Privy::Authorization.format_request_for_authorization_signature(
      Privy::Authorization::WalletApiRequestSignatureInput.build(
        method: :post,
        url: "#{BASE_URL}/v1/wallets/w-1/rpc",
        body: rpc_body,
        headers: {
          "privy-app-id" => "app-abc",
          "privy-request-expiry" => captured_expiry
        }
      )
    )
    pub = OpenSSL::PKey.read(kp.public_key.unpack1("m0"))
    digest = OpenSSL::Digest.new("SHA256").digest(expected_payload)
    assert(pub.dsa_verify_asn1(digest, captured_sig.unpack1("m0")))
  end

  def test_rpc_with_auth_context_and_idempotency_signs_over_idempotency_header
    kp = Privy::Cryptography.generate_p256_key_pair
    stub_json(:post, "#{BASE_URL}/v1/wallets/w-1/rpc", body: RPC_RESPONSE_BODY)

    build_client.wallets.rpc(
      "w-1",
      wallet_rpc_request_body: rpc_body,
      idempotency_key: "idem-both",
      authorization_context: Privy::Authorization::AuthorizationContext.build(
        authorization_private_keys: [kp.private_key]
      )
    )

    captured_sig = nil
    captured_expiry = nil
    assert_requested(:post, "#{BASE_URL}/v1/wallets/w-1/rpc") do |req|
      assert_equal("idem-both", req.headers["Privy-Idempotency-Key"])
      captured_sig = req.headers["Privy-Authorization-Signature"]
      captured_expiry = req.headers["Privy-Request-Expiry"]
    end

    expected_payload = Privy::Authorization.format_request_for_authorization_signature(
      Privy::Authorization::WalletApiRequestSignatureInput.build(
        method: :post,
        url: "#{BASE_URL}/v1/wallets/w-1/rpc",
        body: rpc_body,
        headers: {
          "privy-app-id" => "app-abc",
          "privy-idempotency-key" => "idem-both",
          "privy-request-expiry" => captured_expiry
        }
      )
    )
    pub = OpenSSL::PKey.read(kp.public_key.unpack1("m0"))
    digest = OpenSSL::Digest.new("SHA256").digest(expected_payload)
    assert(
      pub.dsa_verify_asn1(digest, captured_sig.unpack1("m0")),
      "signature must cover idempotency-key header"
    )
  end

  # --- request_expiry on update ----------------------------------------------

  def test_update_default_request_expiry_is_auto_set
    stub_json(:patch, "#{BASE_URL}/v1/wallets/w-1", body: wallet_response_body(display_name: "n"))
    before = Process.clock_gettime(Process::CLOCK_REALTIME, :millisecond)
    build_client.wallets.update("w-1", wallet_update_params: {display_name: "n"})
    assert_requested(:patch, "#{BASE_URL}/v1/wallets/w-1") do |req|
      sent = req.headers["Privy-Request-Expiry"].to_i
      assert_in_delta(before + (15 * 60 * 1_000), sent, 5_000)
    end
  end

  def test_update_per_call_request_expiry_overrides_default
    stub_json(:patch, "#{BASE_URL}/v1/wallets/w-1", body: wallet_response_body(display_name: "n"))
    build_client.wallets.update(
      "w-1",
      wallet_update_params: {display_name: "n"},
      request_expiry: 1_750_000_000_000
    )
    assert_requested(:patch, "#{BASE_URL}/v1/wallets/w-1") do |req|
      assert_equal("1750000000000", req.headers["Privy-Request-Expiry"])
    end
  end

  def test_update_disabled_options_omit_header
    client = Privy::PrivyClient.new(
      app_id: "app-abc",
      app_secret: "secret",
      environment: :staging,
      request_expiry: Privy::PrivyRequestExpiryOptions.build(disabled: true)
    )
    stub_json(:patch, "#{BASE_URL}/v1/wallets/w-1", body: wallet_response_body(display_name: "n"))
    client.wallets.update("w-1", wallet_update_params: {display_name: "n"})
    assert_requested(:patch, "#{BASE_URL}/v1/wallets/w-1") do |req|
      refute(req.headers.key?("Privy-Request-Expiry"))
    end
  end

  def test_update_disabled_options_still_honor_explicit_override
    client = Privy::PrivyClient.new(
      app_id: "app-abc",
      app_secret: "secret",
      environment: :staging,
      request_expiry: Privy::PrivyRequestExpiryOptions.build(disabled: true)
    )
    stub_json(:patch, "#{BASE_URL}/v1/wallets/w-1", body: wallet_response_body(display_name: "n"))
    client.wallets.update(
      "w-1",
      wallet_update_params: {display_name: "n"},
      request_expiry: 1_750_000_000_000
    )
    assert_requested(:patch, "#{BASE_URL}/v1/wallets/w-1") do |req|
      assert_equal("1750000000000", req.headers["Privy-Request-Expiry"])
    end
  end

  # --- request_expiry on rpc / raw_sign / transfer ---------------------------

  RAW_SIGN_RESPONSE_BODY = {
    method: "raw_sign",
    data: {encoding: "hex", signature: "0xdeadbeef"}
  }.to_json

  TRANSFER_RESPONSE_BODY = {
    id: "wa-1",
    created_at: "2026-01-01T00:00:00Z",
    destination_address: "0x0000000000000000000000000000000000000001",
    source_chain: "base",
    status: "submitted",
    type: "transfer",
    wallet_id: "w-1"
  }.to_json

  def test_rpc_per_call_request_expiry_overrides_default
    stub_json(:post, "#{BASE_URL}/v1/wallets/w-1/rpc", body: RPC_RESPONSE_BODY)
    build_client.wallets.rpc(
      "w-1",
      wallet_rpc_request_body: rpc_body,
      request_expiry: 1_750_000_000_000
    )
    assert_requested(:post, "#{BASE_URL}/v1/wallets/w-1/rpc") do |req|
      assert_equal("1750000000000", req.headers["Privy-Request-Expiry"])
    end
  end

  def test_raw_sign_per_call_request_expiry_overrides_default
    stub_json(:post, "#{BASE_URL}/v1/wallets/w-1/raw_sign", body: RAW_SIGN_RESPONSE_BODY)
    build_client.wallets.raw_sign(
      "w-1",
      raw_sign_input: {params: {hash: "0x1234"}},
      request_expiry: 1_750_000_000_000
    )
    assert_requested(:post, "#{BASE_URL}/v1/wallets/w-1/raw_sign") do |req|
      assert_equal("1750000000000", req.headers["Privy-Request-Expiry"])
    end
  end

  def test_transfer_per_call_request_expiry_overrides_default
    stub_json(:post, "#{BASE_URL}/v1/wallets/w-1/transfer", body: TRANSFER_RESPONSE_BODY)
    build_client.wallets.transfer(
      "w-1",
      wallet_transfer_params: {
        source: {asset: "usdc", amount: "1", chain: "base"},
        destination: {address: "0x0000000000000000000000000000000000000001"}
      },
      request_expiry: 1_750_000_000_000
    )
    assert_requested(:post, "#{BASE_URL}/v1/wallets/w-1/transfer") do |req|
      assert_equal("1750000000000", req.headers["Privy-Request-Expiry"])
    end
  end

  # --- export ----------------------------------------------------------------

  def test_export_decrypts_private_key_response
    stub_request(:post, "#{BASE_URL}/v1/wallets/w-1/export").to_return do |request|
      body = parse_json_body(request)
      {
        status: 200,
        body: hpke_encrypt_for_recipient(body.fetch("recipient_public_key"), "0xprivate"),
        headers: {"content-type" => "application/json"}
      }
    end

    response = build_client.wallets.export("w-1")

    assert_equal({private_key: "0xprivate"}, response)
    assert_requested(:post, "#{BASE_URL}/v1/wallets/w-1/export") do |req|
      body = parse_json_body(req)
      assert_equal("HPKE", body.fetch("encryption_type"))
      assert_match(%r{\A[A-Za-z0-9+/]+=*\z}, body.fetch("recipient_public_key"))
      refute(body.key?("export_seed_phrase"))
    end
  end

  def test_export_private_key_requests_private_key
    stub_request(:post, "#{BASE_URL}/v1/wallets/w-1/export").to_return do |request|
      body = parse_json_body(request)
      {
        status: 200,
        body: hpke_encrypt_for_recipient(body.fetch("recipient_public_key"), "0xprivate"),
        headers: {"content-type" => "application/json"}
      }
    end

    response = build_client.wallets.export_private_key("w-1")

    assert_equal({private_key: "0xprivate"}, response)
    assert_requested(:post, "#{BASE_URL}/v1/wallets/w-1/export") do |req|
      assert_equal(false, parse_json_body(req).fetch("export_seed_phrase"))
    end
  end

  def test_export_seed_phrase_maps_private_key_payload_to_seed_phrase
    stub_request(:post, "#{BASE_URL}/v1/wallets/w-1/export").to_return do |request|
      body = parse_json_body(request)
      {
        status: 200,
        body: hpke_encrypt_for_recipient(body.fetch("recipient_public_key"), "test test test junk"),
        headers: {"content-type" => "application/json"}
      }
    end

    response = build_client.wallets.export_seed_phrase("w-1")

    assert_equal({seed_phrase: "test test test junk"}, response)
    assert_requested(:post, "#{BASE_URL}/v1/wallets/w-1/export") do |req|
      assert_equal(true, parse_json_body(req).fetch("export_seed_phrase"))
    end
  end

  def test_export_per_call_request_expiry_overrides_default
    stub_request(:post, "#{BASE_URL}/v1/wallets/w-1/export").to_return do |request|
      body = parse_json_body(request)
      {
        status: 200,
        body: hpke_encrypt_for_recipient(body.fetch("recipient_public_key"), "0xprivate"),
        headers: {"content-type" => "application/json"}
      }
    end

    build_client.wallets.export("w-1", request_expiry: 1_750_000_000_000)

    assert_requested(:post, "#{BASE_URL}/v1/wallets/w-1/export") do |req|
      assert_equal("1750000000000", req.headers["Privy-Request-Expiry"])
    end
  end
end
