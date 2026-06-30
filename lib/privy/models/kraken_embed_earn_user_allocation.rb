# frozen_string_literal: true

module Privy
  module Models
    class KrakenEmbedEarnUserAllocation < Privy::Internal::Type::BaseModel
      # @!attribute total_allocated
      #   An earn amount with native and converted values.
      #
      #   @return [Privy::Models::KrakenEmbedEarnAmount, nil]
      required :total_allocated, -> { Privy::KrakenEmbedEarnAmount }, nil?: true

      # @!attribute total_rewarded
      #   An earn amount with native and converted values.
      #
      #   @return [Privy::Models::KrakenEmbedEarnAmount, nil]
      required :total_rewarded, -> { Privy::KrakenEmbedEarnAmount }, nil?: true

      # @!attribute upcoming_reward_date
      #
      #   @return [Time, nil]
      optional :upcoming_reward_date, Time, nil?: true

      # @!method initialize(total_allocated:, total_rewarded:, upcoming_reward_date: nil)
      #   User allocation for an earn asset.
      #
      #   @param total_allocated [Privy::Models::KrakenEmbedEarnAmount, nil] An earn amount with native and converted values.
      #
      #   @param total_rewarded [Privy::Models::KrakenEmbedEarnAmount, nil] An earn amount with native and converted values.
      #
      #   @param upcoming_reward_date [Time, nil]
    end
  end
end
