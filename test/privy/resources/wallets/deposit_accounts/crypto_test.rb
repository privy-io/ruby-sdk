# frozen_string_literal: true

require_relative "../../../test_helper"

class Privy::Test::Resources::Wallets::DepositAccounts::CryptoTest < Privy::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @privy_api.wallets.deposit_accounts.crypto.create(
        "wallet_id",
        create_crypto_deposit_account_request_body: {deposit_config_id: "clg2rvssg025ny5fmul5m95fn"}
      )

    assert_pattern do
      response => Privy::CreateCryptoDepositAccountResponse
    end

    assert_pattern do
      response => {
        deposit_accounts: ^(Privy::Internal::Type::ArrayOf[Privy::CryptoDepositAddressRoute])
      }
    end
  end
end
