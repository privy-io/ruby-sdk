# frozen_string_literal: true

module Privy
  module Models
    class KrakenEmbedGetEarnSummaryResult < Privy::Internal::Type::BaseModel
      # @!attribute auto_earn_eligible
      #
      #   @return [Boolean]
      required :auto_earn_eligible, Privy::Internal::Type::Boolean

      # @!attribute auto_earn_enabled
      #
      #   @return [Boolean]
      required :auto_earn_enabled, Privy::Internal::Type::Boolean

      # @!attribute num_earning_assets
      #
      #   @return [Integer]
      required :num_earning_assets, Integer

      # @!attribute payout_period
      #
      #   @return [String]
      required :payout_period, String

      # @!attribute total_allocated_converted
      #
      #   @return [String]
      required :total_allocated_converted, String

      # @!attribute total_rewarded_converted_current_rate
      #
      #   @return [String]
      required :total_rewarded_converted_current_rate, String

      # @!attribute total_rewarded_converted_true_rates
      #
      #   @return [String]
      required :total_rewarded_converted_true_rates, String

      # @!attribute upcoming_rewards
      #
      #   @return [Array<Privy::Models::KrakenEmbedUpcomingReward>]
      required :upcoming_rewards, -> { Privy::Internal::Type::ArrayOf[Privy::KrakenEmbedUpcomingReward] }

      # @!attribute auto_earn_last_changed
      #
      #   @return [Time, nil]
      optional :auto_earn_last_changed, Time, nil?: true

      # @!method initialize(auto_earn_eligible:, auto_earn_enabled:, num_earning_assets:, payout_period:, total_allocated_converted:, total_rewarded_converted_current_rate:, total_rewarded_converted_true_rates:, upcoming_rewards:, auto_earn_last_changed: nil)
      #   Result payload for earn summary response.
      #
      #   @param auto_earn_eligible [Boolean]
      #   @param auto_earn_enabled [Boolean]
      #   @param num_earning_assets [Integer]
      #   @param payout_period [String]
      #   @param total_allocated_converted [String]
      #   @param total_rewarded_converted_current_rate [String]
      #   @param total_rewarded_converted_true_rates [String]
      #   @param upcoming_rewards [Array<Privy::Models::KrakenEmbedUpcomingReward>]
      #   @param auto_earn_last_changed [Time, nil]
    end
  end
end
