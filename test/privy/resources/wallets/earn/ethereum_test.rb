# frozen_string_literal: true

require_relative "../../../test_helper"

class Privy::Test::Resources::Wallets::Earn::EthereumTest < Privy::Test::ResourceTest
  def test__deposit_required_params
    skip("Mock server tests are disabled")

    response = @privy_api.wallets.earn.ethereum._deposit("wallet_id", vault_id: "cm7oxq1el000e11o8iwp7d0d0")

    assert_pattern do
      response => Privy::EarnDepositActionResponse
    end

    assert_pattern do
      response => {
        id: String,
        asset_address: String,
        caip2: String,
        created_at: Time,
        raw_amount: String,
        share_amount: String | nil,
        status: Privy::WalletActionStatus,
        type: Privy::EarnDepositActionResponse::Type,
        vault_address: String,
        vault_id: String,
        wallet_id: String,
        amount: String | nil,
        asset: String | nil,
        decimals: Integer | nil,
        failure_reason: Privy::FailureReason | nil,
        steps: ^(Privy::Internal::Type::ArrayOf[union: Privy::WalletActionStep]) | nil
      }
    end
  end

  def test__withdraw_required_params
    skip("Mock server tests are disabled")

    response = @privy_api.wallets.earn.ethereum._withdraw("wallet_id", vault_id: "cm7oxq1el000e11o8iwp7d0d0")

    assert_pattern do
      response => Privy::EarnWithdrawActionResponse
    end

    assert_pattern do
      response => {
        id: String,
        asset_address: String,
        caip2: String,
        created_at: Time,
        raw_amount: String,
        share_amount: String | nil,
        status: Privy::WalletActionStatus,
        type: Privy::EarnWithdrawActionResponse::Type,
        vault_address: String,
        vault_id: String,
        wallet_id: String,
        amount: String | nil,
        asset: String | nil,
        decimals: Integer | nil,
        failure_reason: Privy::FailureReason | nil,
        steps: ^(Privy::Internal::Type::ArrayOf[union: Privy::WalletActionStep]) | nil
      }
    end
  end
end
