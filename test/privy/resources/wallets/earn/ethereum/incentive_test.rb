# frozen_string_literal: true

require_relative "../../../../test_helper"

class Privy::Test::Resources::Wallets::Earn::Ethereum::IncentiveTest < Privy::Test::ResourceTest
  def test_claim_required_params
    skip("Mock server tests are disabled")

    response = @privy_api.wallets.earn.ethereum.incentive.claim("wallet_id", chain: "base")

    assert_pattern do
      response => Privy::Wallets::EarnIncentiveClaimActionResponse
    end

    assert_pattern do
      response => {
        id: String,
        chain: String,
        created_at: Time,
        rewards: ^(Privy::Internal::Type::ArrayOf[Privy::Wallets::EarnIncetiveClaimRewardEntry]) | nil,
        status: Privy::Wallets::WalletActionStatus,
        type: Privy::Wallets::EarnIncentiveClaimActionResponse::Type,
        wallet_id: String,
        failure_reason: Privy::Wallets::FailureReason | nil,
        reference_id: String | nil,
        steps: ^(Privy::Internal::Type::ArrayOf[union: Privy::Wallets::WalletActionStep]) | nil
      }
    end
  end
end
