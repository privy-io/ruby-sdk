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
end
