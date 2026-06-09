# typed: strong

module Privy
  module Models
    class KrakenEmbedEarnUserAllocation < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::KrakenEmbedEarnUserAllocation, Privy::Internal::AnyHash)
        end

      # An earn amount with native and converted values.
      sig { returns(T.nilable(Privy::KrakenEmbedEarnAmount)) }
      attr_reader :total_allocated

      sig do
        params(
          total_allocated: T.nilable(Privy::KrakenEmbedEarnAmount::OrHash)
        ).void
      end
      attr_writer :total_allocated

      # An earn amount with native and converted values.
      sig { returns(T.nilable(Privy::KrakenEmbedEarnAmount)) }
      attr_reader :total_rewarded

      sig do
        params(
          total_rewarded: T.nilable(Privy::KrakenEmbedEarnAmount::OrHash)
        ).void
      end
      attr_writer :total_rewarded

      sig { returns(T.nilable(Time)) }
      attr_accessor :upcoming_reward_date

      # User allocation for an earn asset.
      sig do
        params(
          total_allocated: T.nilable(Privy::KrakenEmbedEarnAmount::OrHash),
          total_rewarded: T.nilable(Privy::KrakenEmbedEarnAmount::OrHash),
          upcoming_reward_date: T.nilable(Time)
        ).returns(T.attached_class)
      end
      def self.new(
        # An earn amount with native and converted values.
        total_allocated:,
        # An earn amount with native and converted values.
        total_rewarded:,
        upcoming_reward_date: nil
      )
      end

      sig do
        override.returns(
          {
            total_allocated: T.nilable(Privy::KrakenEmbedEarnAmount),
            total_rewarded: T.nilable(Privy::KrakenEmbedEarnAmount),
            upcoming_reward_date: T.nilable(Time)
          }
        )
      end
      def to_hash
      end
    end
  end
end
