# frozen_string_literal: true

module Privy
  module Models
    class KrakenEmbedUpcomingReward < Privy::Internal::Type::BaseModel
      # @!attribute accumulated_amount
      #   An earn amount with native and converted values.
      #
      #   @return [Privy::Models::KrakenEmbedEarnAmount]
      required :accumulated_amount, -> { Privy::KrakenEmbedEarnAmount }

      # @!attribute asset
      #
      #   @return [String]
      required :asset, String

      # @!attribute date
      #
      #   @return [Time]
      required :date, Time

      # @!attribute estimated_pending_amount
      #   An earn amount with native and converted values.
      #
      #   @return [Privy::Models::KrakenEmbedUpcomingReward::EstimatedPendingAmount]
      required :estimated_pending_amount, -> { Privy::KrakenEmbedUpcomingReward::EstimatedPendingAmount }

      # @!method initialize(accumulated_amount:, asset:, date:, estimated_pending_amount:)
      #   An upcoming earn reward for a specific asset.
      #
      #   @param accumulated_amount [Privy::Models::KrakenEmbedEarnAmount] An earn amount with native and converted values.
      #
      #   @param asset [String]
      #
      #   @param date [Time]
      #
      #   @param estimated_pending_amount [Privy::Models::KrakenEmbedUpcomingReward::EstimatedPendingAmount] An earn amount with native and converted values.

      # @see Privy::Models::KrakenEmbedUpcomingReward#estimated_pending_amount
      class EstimatedPendingAmount < Privy::Models::KrakenEmbedEarnAmount
        # @!method initialize
        #   An earn amount with native and converted values.
      end
    end
  end
end
