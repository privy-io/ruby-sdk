# frozen_string_literal: true

require_relative "../../../test_helper"

class Privy::Test::Resources::Wallets::Earn::TmmfTest < Privy::Test::ResourceTest
  def test_deposit_required_params
    skip("Mock server tests are disabled")

    response =
      @privy_api.wallets.earn.tmmf.deposit(
        "wallet_id",
        amount: "1000.00",
        chain: "ethereum_sepolia",
        deposit_asset: "USDC",
        fund: "WTGXX",
        order_type: :secondary
      )

    assert_pattern do
      response => Privy::Wallets::TmmfDepositActionResponse
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        status: Privy::Wallets::WalletActionStatus,
        type: Privy::Wallets::TmmfDepositActionResponse::Type,
        wallet_id: String,
        failure_reason: Privy::Wallets::FailureReason | nil,
        reference_id: String | nil,
        steps: ^(Privy::Internal::Type::ArrayOf[union: Privy::Wallets::WalletActionStep]) | nil
      }
    end
  end

  def test_list_positions
    skip("Mock server tests are disabled")

    response = @privy_api.wallets.earn.tmmf.list_positions("wallet_id")

    assert_pattern do
      response => Privy::Wallets::TmmfPositionResponse
    end

    assert_pattern do
      response => {
        next_cursor: String | nil,
        positions: ^(Privy::Internal::Type::ArrayOf[Privy::Wallets::TmmfPosition]),
        wallet_id: String
      }
    end
  end

  def test_register_required_params
    skip("Mock server tests are disabled")

    response =
      @privy_api.wallets.earn.tmmf.register("wallet_id", chain: "ethereum_sepolia", provider: :wisdomtree)

    assert_pattern do
      response => Privy::Wallets::TmmfWalletResponse
    end

    assert_pattern do
      response => {
        address: String,
        chain: String,
        created_at: Integer,
        provider: Privy::Wallets::TmmfProvider,
        status: Privy::Wallets::TmmfProviderWalletStatus | nil,
        updated_at: Integer,
        user_id: String,
        wallet_id: String
      }
    end
  end

  def test_withdraw_required_params
    skip("Mock server tests are disabled")

    response =
      @privy_api.wallets.earn.tmmf.withdraw(
        "wallet_id",
        chain: "ethereum_sepolia",
        fund: "WTGXX",
        order_type: :primary,
        shares: "1000.000000",
        withdraw_asset: "USDC"
      )

    assert_pattern do
      response => Privy::Wallets::TmmfWithdrawActionResponse
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        status: Privy::Wallets::WalletActionStatus,
        type: Privy::Wallets::TmmfWithdrawActionResponse::Type,
        wallet_id: String,
        failure_reason: Privy::Wallets::FailureReason | nil,
        reference_id: String | nil,
        steps: ^(Privy::Internal::Type::ArrayOf[union: Privy::Wallets::WalletActionStep]) | nil
      }
    end
  end
end
