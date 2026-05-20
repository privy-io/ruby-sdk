# frozen_string_literal: true

module Privy
  module Models
    class KrakenEmbedEarnAsset < Privy::Internal::Type::BaseModel
      # @!attribute apr_estimate
      #   Low and high estimate of the yield of an earn asset.
      #
      #   @return [Privy::Models::KrakenEmbedEarnAsset::AprEstimate]
      required :apr_estimate, -> { Privy::KrakenEmbedEarnAsset::AprEstimate }

      # @!attribute user_allocation
      #   User allocation for an earn asset.
      #
      #   @return [Privy::Models::KrakenEmbedEarnAsset::UserAllocation, nil]
      optional :user_allocation, -> { Privy::KrakenEmbedEarnAsset::UserAllocation }

      # @!method initialize(apr_estimate:, user_allocation: nil)
      #   A single asset that can yield rewards.
      #
      #   @param apr_estimate [Privy::Models::KrakenEmbedEarnAsset::AprEstimate] Low and high estimate of the yield of an earn asset.
      #
      #   @param user_allocation [Privy::Models::KrakenEmbedEarnAsset::UserAllocation] User allocation for an earn asset.

      # @see Privy::Models::KrakenEmbedEarnAsset#apr_estimate
      class AprEstimate < Privy::Models::KrakenEmbedEarnAprEstimate
        # @!method initialize
        #   Low and high estimate of the yield of an earn asset.
      end

      # @see Privy::Models::KrakenEmbedEarnAsset#user_allocation
      class UserAllocation < Privy::Models::KrakenEmbedEarnUserAllocation
        # @!method initialize
        #   User allocation for an earn asset.
      end
    end
  end
end
