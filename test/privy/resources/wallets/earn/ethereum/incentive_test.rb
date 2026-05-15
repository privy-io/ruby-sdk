# frozen_string_literal: true

require_relative "../../../../test_helper"

class Privy::Test::Resources::Wallets::Earn::Ethereum::IncentiveTest < Privy::Test::ResourceTest
  def test__claim_required_params
    skip("Mock server tests are disabled")

    response = @privy_api.wallets.earn.ethereum.incentive._claim("wallet_id", chain: "base")

    assert_pattern do
      response => Privy::EarnIncentiveClaimActionResponse
    end

    assert_pattern do
      response => {
        id: String,
        chain: String,
        created_at: Time,
        rewards: ^(Privy::Internal::Type::ArrayOf[Privy::EarnIncetiveClaimRewardEntry]) | nil,
        status: Privy::WalletActionStatus,
        type: Privy::EarnIncentiveClaimActionResponse::Type,
        wallet_id: String,
        failure_reason: Privy::FailureReason | nil,
        steps: ^(Privy::Internal::Type::ArrayOf[union: Privy::WalletActionStep]) | nil
      }
    end
  end
end
