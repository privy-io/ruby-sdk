# frozen_string_literal: true

module Privy
  module Models
    class EarnClaimedRewardsResponse < Privy::Internal::Type::BaseModel
      # @!attribute claimed_rewards
      #   Rewards claimed through Privy, aggregated by token across all successful
      #   incentive claims.
      #
      #   @return [Array<Privy::Models::EarnIncetiveClaimRewardEntry>]
      required :claimed_rewards, -> { Privy::Internal::Type::ArrayOf[Privy::EarnIncetiveClaimRewardEntry] }

      # @!method initialize(claimed_rewards:)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::EarnClaimedRewardsResponse} for more details.
      #
      #   All incentive rewards claimed by a wallet, aggregated by token.
      #
      #   @param claimed_rewards [Array<Privy::Models::EarnIncetiveClaimRewardEntry>] Rewards claimed through Privy, aggregated by token across all successful incenti
    end
  end
end
