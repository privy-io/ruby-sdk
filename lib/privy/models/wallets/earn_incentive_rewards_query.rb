# frozen_string_literal: true

module Privy
  module Models
    module Wallets
      class EarnIncentiveRewardsQuery < Privy::Internal::Type::BaseModel
        # @!attribute chain
        #   Chain name to fetch rewards for (e.g. "tempo", "base").
        #
        #   @return [String]
        required :chain, String

        # @!method initialize(chain:)
        #   Query parameters for fetching incentive rewards.
        #
        #   @param chain [String] Chain name to fetch rewards for (e.g. "tempo", "base").
      end
    end
  end
end
