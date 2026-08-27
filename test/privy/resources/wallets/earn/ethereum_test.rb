# frozen_string_literal: true

require_relative "../../../test_helper"

class Privy::Test::Resources::Wallets::Earn::EthereumTest < Privy::Test::ResourceTest
  def test_deposit_required_params
    skip("Mock server tests are disabled")

    response = @privy_api.wallets.earn.ethereum.deposit("wallet_id", vault_id: "cm7oxq1el000e11o8iwp7d0d0")

    assert_pattern do
      response => Privy::Wallets::EarnDepositActionResponse
    end

    assert_pattern do
      response => {
        id: String,
        asset_address: String,
        caip2: String,
        created_at: Time,
        raw_amount: String,
        share_amount: String | nil,
        status: Privy::Wallets::WalletActionStatus,
        type: Privy::Wallets::EarnDepositActionResponse::Type,
        vault_address: String,
        vault_id: String,
        wallet_id: String,
        amount: String | nil,
        asset: String | nil,
        decimals: Integer | nil,
        failure_reason: Privy::Wallets::FailureReason | nil,
        steps: ^(Privy::Internal::Type::ArrayOf[union: Privy::Wallets::WalletActionStep]) | nil
      }
    end
  end

  def test_vault_details
    skip("Mock server tests are disabled")

    response = @privy_api.wallets.earn.ethereum.vault_details("vault_id")

    assert_pattern do
      response => Privy::Wallets::EthereumEarnVaultDetailsResponse
    end

    assert_pattern do
      case response
      in Privy::Wallets::AaveVaultDetails
      in Privy::Wallets::MorphoVaultDetails
      in Privy::Wallets::TempoVaultDetails
      in Privy::Wallets::VedaVaultDetails
      end
    end

    assert_pattern do
      case response
      in {
        provider: :aave,
        id: String,
        admin_wallet_address: String,
        admin_wallet_id: String,
        app_apy: Float | nil,
        asset: Privy::Wallets::EarnAsset,
        available_fees: String,
        available_liquidity_usd: Float | nil,
        caip2: String,
        name: String,
        tvl_usd: Float | nil,
        user_apy: Float | nil,
        vault_address: String
      }
      in {
        provider: :morpho,
        id: String,
        admin_wallet_address: String,
        admin_wallet_id: String,
        app_apy: Float | nil,
        asset: Privy::Wallets::EarnAsset,
        available_liquidity_usd: Float | nil,
        caip2: String,
        name: String,
        total_rewards_apr: Float,
        tvl_usd: Float | nil,
        user_apy: Float | nil,
        vault_address: String
      }
      in {
        provider: :tempo,
        id: String,
        admin_wallet_address: String,
        admin_wallet_id: String,
        app_apy: Float | nil,
        asset: Privy::Wallets::EarnAsset,
        available_liquidity_usd: Float | nil,
        caip2: String,
        name: String,
        tvl_usd: Float | nil,
        user_apy: Float | nil,
        vault_address: String
      }
      in {
        provider: :veda,
        id: String,
        admin_wallet_address: String,
        admin_wallet_id: String,
        app_apy: Float | nil,
        asset: Privy::Wallets::EarnAsset,
        available_liquidity_usd: Float | nil,
        caip2: String,
        name: String,
        tvl_usd: Float | nil,
        user_apy: Float | nil,
        vault_address: String
      }
      end
    end
  end

  def test_vault_position_required_params
    skip("Mock server tests are disabled")

    response = @privy_api.wallets.earn.ethereum.vault_position("wallet_id", vault_id: "vault_id")

    assert_pattern do
      response => Privy::Wallets::EthereumEarnPositionResponse
    end

    assert_pattern do
      response => {
        asset: Privy::Wallets::EarnAsset,
        assets_in_vault: String,
        shares_in_vault: String,
        total_deposited: String,
        total_withdrawn: String
      }
    end
  end

  def test_withdraw_required_params
    skip("Mock server tests are disabled")

    response = @privy_api.wallets.earn.ethereum.withdraw("wallet_id", vault_id: "cm7oxq1el000e11o8iwp7d0d0")

    assert_pattern do
      response => Privy::Wallets::EarnWithdrawActionResponse
    end

    assert_pattern do
      response => {
        id: String,
        asset_address: String,
        caip2: String,
        created_at: Time,
        raw_amount: String,
        share_amount: String | nil,
        status: Privy::Wallets::WalletActionStatus,
        type: Privy::Wallets::EarnWithdrawActionResponse::Type,
        vault_address: String,
        vault_id: String,
        wallet_id: String,
        amount: String | nil,
        asset: String | nil,
        decimals: Integer | nil,
        failure_reason: Privy::Wallets::FailureReason | nil,
        steps: ^(Privy::Internal::Type::ArrayOf[union: Privy::Wallets::WalletActionStep]) | nil
      }
    end
  end
end
