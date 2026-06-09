# frozen_string_literal: true

module Privy
  module Models
    class KrakenEmbedEarnAsset < Privy::Internal::Type::BaseModel
      # @!attribute apr_estimate
      #   Low and high estimate of the yield of an earn asset.
      #
      #   @return [Privy::Models::KrakenEmbedEarnAprEstimate, nil]
      required :apr_estimate, -> { Privy::KrakenEmbedEarnAprEstimate }, nil?: true

      # @!attribute user_allocation
      #   User allocation for an earn asset.
      #
      #   @return [Privy::Models::KrakenEmbedEarnUserAllocation, nil]
      optional :user_allocation, -> { Privy::KrakenEmbedEarnUserAllocation }, nil?: true

      # @!method initialize(apr_estimate:, user_allocation: nil)
      #   A single asset that can yield rewards.
      #
      #   @param apr_estimate [Privy::Models::KrakenEmbedEarnAprEstimate, nil] Low and high estimate of the yield of an earn asset.
      #
      #   @param user_allocation [Privy::Models::KrakenEmbedEarnUserAllocation, nil] User allocation for an earn asset.
    end
  end
end
