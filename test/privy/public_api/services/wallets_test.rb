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

  # --- export: encryption_type validation ------------------------------------

  def test_export_raises_when_response_encryption_type_is_not_hpke
    stub_json(
      :post,
      "#{BASE_URL}/v1/wallets/w-1/export",
      body: {
        ciphertext: Base64.strict_encode64("x"),
        encapsulated_key: Base64.strict_encode64("y"),
        encryption_type: "AES-GCM"
      }.to_json
    )
    err = assert_raises(Privy::Errors::Error) do
      build_client.wallets.export("w-1")
    end
    assert_match(/encryption type/i, err.message)
  end

  # --- import: caller-supplied hpke_config -----------------------------------

  def test_import_rejects_caller_supplied_hpke_config
    err = assert_raises(Privy::Errors::Error) do
      build_client.wallets.import(
        wallet: {
          private_key: "0x#{'1'.rjust(64, '0')}",
          entropy_type: "private-key",
          chain_type: "ethereum",
          address: "0x0000000000000000000000000000000000000001",
          hpke_config: {kem: "DHKEM_P256_HKDF_SHA256"}
        }
      )
    end
    assert_match(/hpke_config/i, err.message)
  end
end
