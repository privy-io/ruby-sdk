# frozen_string_literal: true

require_relative "../integration_test_helper"

class Privy::Test::Integration::WalletsTest < Privy::Test::IntegrationTest
  def test_create_ownerless_ethereum_wallet_returns_id_and_address
    wallet = client.wallets.create(wallet_create_params: {chain_type: :ethereum})

    refute_nil(wallet.id, "expected wallet.id to be set")
    refute_nil(wallet.address, "expected wallet.address to be set")
    assert_match(/^0x[a-fA-F0-9]{40}$/, wallet.address, "address should be 0x-prefixed 40 hex chars")
    assert_equal(:ethereum, wallet.chain_type)
  end

  def test_rpc_personal_sign_on_ownerless_wallet_returns_signature
    wallet = client.wallets.create(wallet_create_params: {chain_type: :ethereum})
    assert_equal(:ethereum, wallet.chain_type)

    response = client.wallets.rpc(
      wallet.id,
      wallet_rpc_request_body: {
        method: "personal_sign",
        chain_type: "ethereum",
        params: {message: "hello from ruby-sdk integration test", encoding: "utf-8"}
      }
    )

    signature = response.data.signature
    refute_nil(signature)
    assert(signature.start_with?("0x"), "expected 0x-prefixed signature, got #{signature.inspect}")
  end

  def test_create_wallet_with_p256_owner_returns_wallet_with_owner_id
    kp = Privy::Cryptography.generate_p256_key_pair
    wallet = client.wallets.create(
      wallet_create_params: {
        chain_type: :ethereum,
        owner: {public_key: kp.public_key}
      }
    )

    refute_nil(wallet.id)
    refute_nil(wallet.address)
    assert_match(/^0x[a-fA-F0-9]{40}$/, wallet.address)
    assert_equal(:ethereum, wallet.chain_type)
    refute_nil(wallet.owner_id, "expected owner_id to be set when a P-256 owner is provided")
  end

  def test_rpc_personal_sign_on_p256_owned_wallet_returns_signature
    kp = Privy::Cryptography.generate_p256_key_pair
    wallet = client.wallets.create(
      wallet_create_params: {
        chain_type: :ethereum,
        owner: {public_key: kp.public_key}
      }
    )

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
    wallet = client.wallets.create(
      wallet_create_params: {
        chain_type: :ethereum,
        owner: {public_key: owner_kp.public_key}
      }
    )

    ctx = Privy::Authorization::AuthorizationContext.build(
      authorization_private_keys: [other_kp.private_key]
    )

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
    wallet = client.wallets.create(
      wallet_create_params: {
        chain_type: :ethereum,
        owner: {public_key: kp.public_key}
      }
    )

    sign_fn = lambda do |payload|
      Privy::Authorization.generate_authorization_signature(
        private_key_base64: kp.private_key,
        payload: payload
      )
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

  # --- User-owned wallet tests (JWT authorization) ---

  def test_rpc_personal_sign_on_user_owned_wallet_with_jwt_returns_signature
    skip("JWT_AUTH_SK not set") unless ENV["JWT_AUTH_SK"] && !ENV["JWT_AUTH_SK"].empty?

    wallet = create_user_owned_wallet
    jwt = generate_test_jwt

    ctx = Privy::Authorization::AuthorizationContext.build(user_jwts: [jwt])
    response = client.wallets.rpc(
      wallet.id,
      wallet_rpc_request_body: {
        method: "personal_sign",
        chain_type: "ethereum",
        params: {message: "hello from ruby-sdk user_jwts test", encoding: "utf-8"}
      },
      authorization_context: ctx
    )

    signature = response.data.signature
    refute_nil(signature)
    assert(signature.start_with?("0x"), "expected 0x-prefixed signature, got #{signature.inspect}")
  end

  def test_rpc_sign_transaction_on_user_owned_wallet_with_jwt_returns_signed_tx
    skip("JWT_AUTH_SK not set") unless ENV["JWT_AUTH_SK"] && !ENV["JWT_AUTH_SK"].empty?

    wallet = create_user_owned_wallet
    jwt = generate_test_jwt

    ctx = Privy::Authorization::AuthorizationContext.build(user_jwts: [jwt])
    response = client.wallets.rpc(
      wallet.id,
      wallet_rpc_request_body: {
        method: "eth_signTransaction",
        chain_type: "ethereum",
        params: {
          transaction: {
            to: "0x0000000000000000000000000000000000000000",
            value: "0x0",
            chain_id: 11_155_111
          }
        }
      },
      authorization_context: ctx
    )

    signed_transaction = response.data.signed_transaction
    refute_nil(signed_transaction)
    assert(
      signed_transaction.start_with?("0x"),
      "expected 0x-prefixed signed tx, got #{signed_transaction.inspect}"
    )
  end

  # --- raw_sign tests ---

  RAW_SIGN_HASH = "0x1234567890abcdef1234567890abcdef1234567890abcdef1234567890abcdef"

  def test_raw_sign_on_ownerless_wallet_returns_signature
    wallet = client.wallets.create(wallet_create_params: {chain_type: :tron})

    response = client.wallets.raw_sign(
      wallet.id,
      raw_sign_input: {params: {hash: RAW_SIGN_HASH}}
    )

    refute_nil(response.data.signature)
    assert_equal(:hex, response.data.encoding)
  end

  def test_raw_sign_on_p256_owned_wallet_returns_signature
    kp = Privy::Cryptography.generate_p256_key_pair
    wallet = client.wallets.create(
      wallet_create_params: {
        chain_type: :tron,
        owner: {public_key: kp.public_key}
      }
    )

    ctx = Privy::Authorization::AuthorizationContext.build(
      authorization_private_keys: [kp.private_key]
    )
    response = client.wallets.raw_sign(
      wallet.id,
      raw_sign_input: {params: {hash: RAW_SIGN_HASH}},
      authorization_context: ctx
    )

    refute_nil(response.data.signature)
    assert_equal(:hex, response.data.encoding)
  end

  def test_raw_sign_on_user_owned_wallet_returns_signature
    skip("JWT_AUTH_SK not set") unless ENV["JWT_AUTH_SK"] && !ENV["JWT_AUTH_SK"].empty?

    wallet = create_user_owned_wallet(chain_type: :tron)
    jwt = generate_test_jwt

    ctx = Privy::Authorization::AuthorizationContext.build(user_jwts: [jwt])
    response = client.wallets.raw_sign(
      wallet.id,
      raw_sign_input: {params: {hash: RAW_SIGN_HASH}},
      authorization_context: ctx
    )

    refute_nil(response.data.signature)
    assert_equal(:hex, response.data.encoding)
  end

  # --- transfer tests ---

  def test_transfer_on_ownerless_wallet
    skip("Skipped to avoid transferring real funds")

    wallet = client.wallets.create(wallet_create_params: {chain_type: :ethereum})

    response = client.wallets.transfer(
      wallet.id,
      wallet_transfer_params: {
        source: {asset: "usdc", amount: "0.01", chain: "base"},
        destination: {address: "0xB00F0759DbeeF5E543Cc3E3B07A6442F5f3928a2"}
      }
    )

    refute_nil(response)
  end
end
