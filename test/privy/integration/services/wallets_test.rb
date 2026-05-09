# frozen_string_literal: true

require_relative "../integration_test_helper"

class Privy::Test::Integration::WalletsTest < Privy::Test::IntegrationTest
  def test_create_ownerless_ethereum_wallet_returns_id_and_address
    wallet = client.wallets.create(chain_type: :ethereum)

    refute_nil(wallet.id, "expected wallet.id to be set")
    refute_nil(wallet.address, "expected wallet.address to be set")
    assert_match(/^0x[a-fA-F0-9]{40}$/, wallet.address, "address should be 0x-prefixed 40 hex chars")
    assert_equal(:ethereum, wallet.chain_type)
  end

  def test_rpc_personal_sign_on_ownerless_wallet_returns_signature
    wallet = client.wallets.create(chain_type: :ethereum)
    assert_equal(:ethereum, wallet.chain_type)

    response = client.wallets.rpc(
      wallet.id,
      wallet_rpc_request_body: {
        method: "personal_sign",
        chain_type: "ethereum",
        params: {message: "hello from ruby-sdk integration test", encoding: "utf-8"}
      }
    )

    # Shape note: the RPC method returns `WalletRpcResponse`, a union. For
    # personal_sign the response is `EthereumPersonalSignRpcResponse` with a
    # `.data.signature` field.
    signature = response.data.signature
    refute_nil(signature)
    assert(signature.start_with?("0x"), "expected 0x-prefixed signature, got #{signature.inspect}")
  end

  def test_create_wallet_with_p256_owner_returns_wallet_with_owner_id
    kp = Privy::Cryptography.generate_p256_key_pair
    wallet = client.wallets.create(chain_type: :ethereum, owner: {public_key: kp.public_key})

    refute_nil(wallet.id)
    refute_nil(wallet.address)
    assert_match(/^0x[a-fA-F0-9]{40}$/, wallet.address)
    assert_equal(:ethereum, wallet.chain_type)
    # The server synthesizes a key quorum from the P-256 public key and returns
    # its ID here. The raw public key is not echoed back on the Wallet object.
    refute_nil(wallet.owner_id, "expected owner_id to be set when a P-256 owner is provided")
  end

  def test_rpc_personal_sign_on_p256_owned_wallet_returns_signature
    kp = Privy::Cryptography.generate_p256_key_pair
    wallet = client.wallets.create(chain_type: :ethereum, owner: {public_key: kp.public_key})

    ctx = Privy::Authorization::AuthorizationContext.build(
      authorization_private_keys: [kp.private_key]
    )
    response = client.wallets.rpc(
      wallet.id,
      wallet_rpc_request_body: {
        method: "personal_sign",
        chain_type: "ethereum",
        params: {message: "hello from ruby-sdk p256 integration test", encoding: "utf-8"}
      },
      authorization_context: ctx
    )

    signature = response.data.signature
    refute_nil(signature)
    assert(signature.start_with?("0x"), "expected 0x-prefixed signature, got #{signature.inspect}")
  end

  def test_rpc_personal_sign_on_p256_owned_wallet_with_wrong_signature_is_rejected
    owner_kp = Privy::Cryptography.generate_p256_key_pair
    other_kp = Privy::Cryptography.generate_p256_key_pair
    wallet = client.wallets.create(chain_type: :ethereum, owner: {public_key: owner_kp.public_key})

    # Sign with a key that is NOT the wallet's owner. The payload is otherwise
    # well-formed, so this exercises the server's signature-verification path
    # rather than a parse/format error.
    ctx = Privy::Authorization::AuthorizationContext.build(
      authorization_private_keys: [other_kp.private_key]
    )

    # APIStatusError is the common parent of 401/403/422; we don't pin the exact
    # status because the server's choice of 4xx for this case is an
    # implementation detail we don't want to over-constrain here.
    assert_raises(Privy::Errors::APIStatusError) do
      client.wallets.rpc(
        wallet.id,
        wallet_rpc_request_body: {
          method: "personal_sign",
          chain_type: "ethereum",
          params: {message: "should be rejected", encoding: "utf-8"}
        },
        authorization_context: ctx
      )
    end
  end

  def test_rpc_personal_sign_on_p256_owned_wallet_with_sign_fn_returns_signature
    kp = Privy::Cryptography.generate_p256_key_pair
    wallet = client.wallets.create(chain_type: :ethereum, owner: {public_key: kp.public_key})

    # Exercises the sign_fns path: a remote-signer style callback that receives
    # the canonicalized payload bytes and returns a base64 DER signature.
    sign_fn = lambda do |payload|
      Privy::Authorization.generate_signature(private_key_base64: kp.private_key, payload: payload)
    end
    ctx = Privy::Authorization::AuthorizationContext.build(sign_fns: [sign_fn])

    response = client.wallets.rpc(
      wallet.id,
      wallet_rpc_request_body: {
        method: "personal_sign",
        chain_type: "ethereum",
        params: {message: "hello from ruby-sdk sign_fn integration test", encoding: "utf-8"}
      },
      authorization_context: ctx
    )

    signature = response.data.signature
    refute_nil(signature)
    assert(signature.start_with?("0x"), "expected 0x-prefixed signature, got #{signature.inspect}")
  end
end
