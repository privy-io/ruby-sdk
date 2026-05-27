# frozen_string_literal: true

module Privy
  module Models
    class EarnClaimedRewardsQuery < Privy::Internal::Type::BaseModel
      # @!attribute chain
      #   Chain name to fetch claimed rewards for (e.g. "base", "ethereum").
      #
      #   @return [String]
      required :chain, String

      # @!method initialize(chain:)
      #   Query parameters for fetching claimed incentive rewards.
      #
      #   @param chain [String] Chain name to fetch claimed rewards for (e.g. "base", "ethereum").
    end
  end
end
