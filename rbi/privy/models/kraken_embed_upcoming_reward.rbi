# typed: strong

module Privy
  module Models
    class KrakenEmbedUpcomingReward < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::KrakenEmbedUpcomingReward, Privy::Internal::AnyHash)
        end

      # An earn amount with native and converted values.
      sig { returns(Privy::KrakenEmbedEarnAmount) }
      attr_reader :accumulated_amount

      sig do
        params(accumulated_amount: Privy::KrakenEmbedEarnAmount::OrHash).void
      end
      attr_writer :accumulated_amount

      sig { returns(String) }
      attr_accessor :asset

      sig { returns(Time) }
      attr_accessor :date

      # An earn amount with native and converted values.
      sig { returns(T.nilable(Privy::KrakenEmbedEarnAmount)) }
      attr_reader :estimated_pending_amount

      sig do
        params(
          estimated_pending_amount:
            T.nilable(Privy::KrakenEmbedEarnAmount::OrHash)
        ).void
      end
      attr_writer :estimated_pending_amount

      # An upcoming earn reward for a specific asset.
      sig do
        params(
          accumulated_amount: Privy::KrakenEmbedEarnAmount::OrHash,
          asset: String,
          date: Time,
          estimated_pending_amount:
            T.nilable(Privy::KrakenEmbedEarnAmount::OrHash)
        ).returns(T.attached_class)
      end
      def self.new(
        # An earn amount with native and converted values.
        accumulated_amount:,
        asset:,
        date:,
        # An earn amount with native and converted values.
        estimated_pending_amount:
      )
      end

      sig do
        override.returns(
          {
            accumulated_amount: Privy::KrakenEmbedEarnAmount,
            asset: String,
            date: Time,
            estimated_pending_amount: T.nilable(Privy::KrakenEmbedEarnAmount)
          }
        )
      end
      def to_hash
      end
    end
  end
end
