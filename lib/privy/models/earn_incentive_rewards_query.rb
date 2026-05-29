# frozen_string_literal: true

module Privy
  module Models
    class EarnIncentiveRewardsQuery < Privy::Internal::Type::BaseModel
      # @!attribute chain
      #   Chain name to fetch rewards for (e.g. "base", "ethereum").
      #
      #   @return [String]
      required :chain, String

      # @!method initialize(chain:)
      #   Query parameters for fetching incentive rewards.
      #
      #   @param chain [String] Chain name to fetch rewards for (e.g. "base", "ethereum").
    end
  end
end
