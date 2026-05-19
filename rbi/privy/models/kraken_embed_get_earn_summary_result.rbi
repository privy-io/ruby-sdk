# typed: strong

module Privy
  module Models
    class KrakenEmbedGetEarnSummaryResult < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::KrakenEmbedGetEarnSummaryResult,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(T::Boolean) }
      attr_accessor :auto_earn_eligible

      sig { returns(T::Boolean) }
      attr_accessor :auto_earn_enabled

      sig { returns(Integer) }
      attr_accessor :num_earning_assets

      sig { returns(String) }
      attr_accessor :payout_period

      sig { returns(String) }
      attr_accessor :total_allocated_converted

      sig { returns(String) }
      attr_accessor :total_rewarded_converted_current_rate

      sig { returns(String) }
      attr_accessor :total_rewarded_converted_true_rates

      sig { returns(T::Array[Privy::KrakenEmbedUpcomingReward]) }
      attr_accessor :upcoming_rewards

      sig { returns(T.nilable(Time)) }
      attr_accessor :auto_earn_last_changed

      # Result payload for earn summary response.
      sig do
        params(
          auto_earn_eligible: T::Boolean,
          auto_earn_enabled: T::Boolean,
          num_earning_assets: Integer,
          payout_period: String,
          total_allocated_converted: String,
          total_rewarded_converted_current_rate: String,
          total_rewarded_converted_true_rates: String,
          upcoming_rewards: T::Array[Privy::KrakenEmbedUpcomingReward::OrHash],
          auto_earn_last_changed: T.nilable(Time)
        ).returns(T.attached_class)
      end
      def self.new(
        auto_earn_eligible:,
        auto_earn_enabled:,
        num_earning_assets:,
        payout_period:,
        total_allocated_converted:,
        total_rewarded_converted_current_rate:,
        total_rewarded_converted_true_rates:,
        upcoming_rewards:,
        auto_earn_last_changed: nil
      )
      end

      sig do
        override.returns(
          {
            auto_earn_eligible: T::Boolean,
            auto_earn_enabled: T::Boolean,
            num_earning_assets: Integer,
            payout_period: String,
            total_allocated_converted: String,
            total_rewarded_converted_current_rate: String,
            total_rewarded_converted_true_rates: String,
            upcoming_rewards: T::Array[Privy::KrakenEmbedUpcomingReward],
            auto_earn_last_changed: T.nilable(Time)
          }
        )
      end
      def to_hash
      end
    end
  end
end
