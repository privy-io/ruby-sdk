# frozen_string_literal: true

require_relative "../../../test_helper"

class Privy::Test::Resources::Wallets::DepositAccounts::FiatTest < Privy::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @privy_api.wallets.deposit_accounts.fiat.create(
        "wallet_id",
        destination: {asset: "asset", chain: "chain"},
        provider: :bridge,
        source: {currency: "currency"}
      )

    assert_pattern do
      response => Privy::FiatDepositAccountResponse
    end

    assert_pattern do
      response => {
        fiat_deposit_account: Privy::FiatDepositAccount
      }
    end
  end

  def test_list_required_params
    skip("Mock server tests are disabled")

    response = @privy_api.wallets.deposit_accounts.fiat.list("wallet_id", provider: :bridge)

    assert_pattern do
      response => Privy::ListFiatDepositAccountsResponse
    end

    assert_pattern do
      response => {
        deposit_accounts: ^(Privy::Internal::Type::ArrayOf[Privy::FiatDepositAccount]),
        next_cursor: String | nil
      }
    end
  end

  def test_get_required_params
    skip("Mock server tests are disabled")

    response = @privy_api.wallets.deposit_accounts.fiat.get("deposit_account_id", wallet_id: "wallet_id")

    assert_pattern do
      response => Privy::FiatDepositAccountResponse
    end

    assert_pattern do
      response => {
        fiat_deposit_account: Privy::FiatDepositAccount
      }
    end
  end
end
