# frozen_string_literal: true

require_relative "../../../test_helper"

class Privy::Test::Resources::Wallets::DepositAccounts::CryptoTest < Privy::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @privy_api.wallets.deposit_accounts.crypto.create(
        "wallet_id",
        create_crypto_deposit_account_request_body: {
          deposit_config_id: "clg2rvssg025ny5fmul5m95fn",
          type: :deposit_config
        }
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

  def test_list
    skip("Mock server tests are disabled")

    response = @privy_api.wallets.deposit_accounts.crypto.list("wallet_id")

    assert_pattern do
      response => Privy::Internal::Cursor
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Privy::CryptoDepositAddressRoute
    end

    assert_pattern do
      row => {
        deposit_address: String,
        destination: Privy::CryptoDepositAsset,
        source: Privy::CryptoDepositAssetFilter,
        wallet_id: String
      }
    end
  end

  def test_get_config
    skip("Mock server tests are disabled")

    response = @privy_api.wallets.deposit_accounts.crypto.get_config

    assert_pattern do
      response => Privy::CryptoDepositAccountConfigResponse
    end

    assert_pattern do
      response => {
        chains: ^(Privy::Internal::Type::HashOf[Privy::CryptoDepositAccountChain]),
        currencies: ^(Privy::Internal::Type::ArrayOf[Privy::CryptoDepositAccountSourceCurrency])
      }
    end
  end
end
