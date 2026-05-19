# frozen_string_literal: true

module Privy
  module Models
    class KrakenEmbedEarnUserAllocation < Privy::Internal::Type::BaseModel
      # @!attribute total_allocated
      #   An earn amount with native and converted values.
      #
      #   @return [Privy::Models::KrakenEmbedEarnUserAllocation::TotalAllocated]
      required :total_allocated, -> { Privy::KrakenEmbedEarnUserAllocation::TotalAllocated }

      # @!attribute total_rewarded
      #   An earn amount with native and converted values.
      #
      #   @return [Privy::Models::KrakenEmbedEarnUserAllocation::TotalRewarded]
      required :total_rewarded, -> { Privy::KrakenEmbedEarnUserAllocation::TotalRewarded }

      # @!attribute upcoming_reward_date
      #
      #   @return [Time, nil]
      optional :upcoming_reward_date, Time, nil?: true

      # @!method initialize(total_allocated:, total_rewarded:, upcoming_reward_date: nil)
      #   User allocation for an earn asset.
      #
      #   @param total_allocated [Privy::Models::KrakenEmbedEarnUserAllocation::TotalAllocated] An earn amount with native and converted values.
      #
      #   @param total_rewarded [Privy::Models::KrakenEmbedEarnUserAllocation::TotalRewarded] An earn amount with native and converted values.
      #
      #   @param upcoming_reward_date [Time, nil]

      # @see Privy::Models::KrakenEmbedEarnUserAllocation#total_allocated
      class TotalAllocated < Privy::Models::KrakenEmbedEarnAmount
        # @!method initialize
        #   An earn amount with native and converted values.
      end

      # @see Privy::Models::KrakenEmbedEarnUserAllocation#total_rewarded
      class TotalRewarded < Privy::Models::KrakenEmbedEarnAmount
        # @!method initialize
        #   An earn amount with native and converted values.
      end
    end
  end
end
