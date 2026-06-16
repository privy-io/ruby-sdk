# frozen_string_literal: true

require_relative "../../test_helper"

class Privy::Test::Resources::Wallets::ActionsTest < Privy::Test::ResourceTest
  def test_get_required_params
    skip("Mock server tests are disabled")

    response = @privy_api.wallets.actions.get("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e", wallet_id: "wallet_id")

    assert_pattern do
      response => Privy::WalletActionResponse
    end

    assert_pattern do
      case response
      in Privy::SwapActionResponse
      in Privy::TransferActionResponse
      in Privy::EarnDepositActionResponse
      in Privy::EarnWithdrawActionResponse
      in Privy::EarnIncentiveClaimActionResponse
      end
    end

    assert_pattern do
      case response
      in {
        type: :swap,
        id: String,
        caip2: String,
        created_at: Time,
        input_amount: String | nil,
        input_token: String,
        output_amount: String | nil,
        output_token: String,
        status: Privy::WalletActionStatus,
        wallet_id: String,
        destination_address: String | nil,
        destination_caip2: String | nil,
        estimated_fees: ^(Privy::Internal::Type::ArrayOf[union: Privy::FeeLineItem]) | nil,
        estimated_gas: Privy::Gas | nil,
        failure_reason: Privy::FailureReason | nil,
        fees: ^(Privy::Internal::Type::ArrayOf[union: Privy::FeeLineItem]) | nil,
        gas: Privy::Gas | nil,
        steps: ^(Privy::Internal::Type::ArrayOf[union: Privy::WalletActionStep]) | nil
      }
      in {
        type: :transfer,
        id: String,
        created_at: Time,
        destination_address: String,
        destination_amount: String | nil,
        source_chain: String,
        status: Privy::WalletActionStatus,
        wallet_id: String,
        destination_asset: String | nil,
        destination_chain: String | nil,
        estimated_fees: ^(Privy::Internal::Type::ArrayOf[union: Privy::FeeLineItem]) | nil,
        estimated_gas: Privy::Gas | nil,
        failure_reason: Privy::FailureReason | nil,
        fees: ^(Privy::Internal::Type::ArrayOf[union: Privy::FeeLineItem]) | nil,
        gas: Privy::Gas | nil,
        source_amount: String | nil,
        source_asset: String | nil,
        source_asset_address: String | nil,
        source_asset_decimals: Integer | nil,
        steps: ^(Privy::Internal::Type::ArrayOf[union: Privy::WalletActionStep]) | nil
      }
      in {
        type: :earn_deposit,
        id: String,
        asset_address: String,
        caip2: String,
        created_at: Time,
        raw_amount: String,
        share_amount: String | nil,
        status: Privy::WalletActionStatus,
        vault_address: String,
        vault_id: String,
        wallet_id: String,
        amount: String | nil,
        asset: String | nil,
        decimals: Integer | nil,
        failure_reason: Privy::FailureReason | nil,
        steps: ^(Privy::Internal::Type::ArrayOf[union: Privy::WalletActionStep]) | nil
      }
      in {
        type: :earn_withdraw,
        id: String,
        asset_address: String,
        caip2: String,
        created_at: Time,
        raw_amount: String,
        share_amount: String | nil,
        status: Privy::WalletActionStatus,
        vault_address: String,
        vault_id: String,
        wallet_id: String,
        amount: String | nil,
        asset: String | nil,
        decimals: Integer | nil,
        failure_reason: Privy::FailureReason | nil,
        steps: ^(Privy::Internal::Type::ArrayOf[union: Privy::WalletActionStep]) | nil
      }
      in {
        type: :earn_incentive_claim,
        id: String,
        chain: String,
        created_at: Time,
        rewards: ^(Privy::Internal::Type::ArrayOf[Privy::EarnIncetiveClaimRewardEntry]) | nil,
        status: Privy::WalletActionStatus,
        wallet_id: String,
        failure_reason: Privy::FailureReason | nil,
        steps: ^(Privy::Internal::Type::ArrayOf[union: Privy::WalletActionStep]) | nil
      }
      end
    end
  end
end
