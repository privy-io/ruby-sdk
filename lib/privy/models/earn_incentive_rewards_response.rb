# frozen_string_literal: true

module Privy
  module Models
    class EarnIncentiveRewardsResponse < Privy::Internal::Type::BaseModel
      # @!attribute rewards
      #   Reward tokens with their claimed and unclaimed amounts.
      #
      #   @return [Array<Privy::Models::EarnIncentiveRewardEntry>]
      required :rewards, -> { Privy::Internal::Type::ArrayOf[Privy::EarnIncentiveRewardEntry] }

      # @!method initialize(rewards:)
      #   All incentive rewards for a wallet, with claimed and unclaimed amounts per
      #   token.
      #
      #   @param rewards [Array<Privy::Models::EarnIncentiveRewardEntry>] Reward tokens with their claimed and unclaimed amounts.
    end
  end
end
