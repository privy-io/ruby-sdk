# frozen_string_literal: true

require_relative "../../../../test_helper"

class Privy::Test::Resources::Wallets::DepositAccounts::Crypto::OrdersTest < Privy::Test::ResourceTest
  def test_get_required_params
    skip("Mock server tests are disabled")

    response =
      @privy_api.wallets.deposit_accounts.crypto.orders.get(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        wallet_id: "wallet_id"
      )

    assert_pattern do
      response => Privy::GetCryptoDepositAccountOrderResponse
    end

    assert_pattern do
      response => {
        id: String,
        status: Privy::Wallets::WalletActionStatus
      }
    end
  end
end
