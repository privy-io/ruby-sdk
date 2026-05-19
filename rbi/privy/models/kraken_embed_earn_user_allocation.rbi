# typed: strong

module Privy
  module Models
    class KrakenEmbedEarnUserAllocation < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::KrakenEmbedEarnUserAllocation, Privy::Internal::AnyHash)
        end

      # An earn amount with native and converted values.
      sig { returns(Privy::KrakenEmbedEarnUserAllocation::TotalAllocated) }
      attr_reader :total_allocated

      sig do
        params(
          total_allocated:
            Privy::KrakenEmbedEarnUserAllocation::TotalAllocated::OrHash
        ).void
      end
      attr_writer :total_allocated

      # An earn amount with native and converted values.
      sig { returns(Privy::KrakenEmbedEarnUserAllocation::TotalRewarded) }
      attr_reader :total_rewarded

      sig do
        params(
          total_rewarded:
            Privy::KrakenEmbedEarnUserAllocation::TotalRewarded::OrHash
        ).void
      end
      attr_writer :total_rewarded

      sig { returns(T.nilable(Time)) }
      attr_accessor :upcoming_reward_date

      # User allocation for an earn asset.
      sig do
        params(
          total_allocated:
            Privy::KrakenEmbedEarnUserAllocation::TotalAllocated::OrHash,
          total_rewarded:
            Privy::KrakenEmbedEarnUserAllocation::TotalRewarded::OrHash,
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
            total_allocated:
              Privy::KrakenEmbedEarnUserAllocation::TotalAllocated,
            total_rewarded: Privy::KrakenEmbedEarnUserAllocation::TotalRewarded,
            upcoming_reward_date: T.nilable(Time)
          }
        )
      end
      def to_hash
      end

      class TotalAllocated < Privy::Models::KrakenEmbedEarnAmount
        OrHash =
          T.type_alias do
            T.any(
              Privy::KrakenEmbedEarnUserAllocation::TotalAllocated,
              Privy::Internal::AnyHash
            )
          end

        # An earn amount with native and converted values.
        sig { returns(T.attached_class) }
        def self.new
        end

        sig { override.returns({}) }
        def to_hash
        end
      end

      class TotalRewarded < Privy::Models::KrakenEmbedEarnAmount
        OrHash =
          T.type_alias do
            T.any(
              Privy::KrakenEmbedEarnUserAllocation::TotalRewarded,
              Privy::Internal::AnyHash
            )
          end

        # An earn amount with native and converted values.
        sig { returns(T.attached_class) }
        def self.new
        end

        sig { override.returns({}) }
        def to_hash
        end
      end
    end
  end
end
