# typed: strong

module Privy
  module Models
    class KrakenEmbedEarnAsset < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::KrakenEmbedEarnAsset, Privy::Internal::AnyHash)
        end

      # Low and high estimate of the yield of an earn asset.
      sig { returns(T.nilable(Privy::KrakenEmbedEarnAprEstimate)) }
      attr_reader :apr_estimate

      sig do
        params(
          apr_estimate: T.nilable(Privy::KrakenEmbedEarnAprEstimate::OrHash)
        ).void
      end
      attr_writer :apr_estimate

      # User allocation for an earn asset.
      sig { returns(T.nilable(Privy::KrakenEmbedEarnUserAllocation)) }
      attr_reader :user_allocation

      sig do
        params(
          user_allocation:
            T.nilable(Privy::KrakenEmbedEarnUserAllocation::OrHash)
        ).void
      end
      attr_writer :user_allocation

      # A single asset that can yield rewards.
      sig do
        params(
          apr_estimate: T.nilable(Privy::KrakenEmbedEarnAprEstimate::OrHash),
          user_allocation:
            T.nilable(Privy::KrakenEmbedEarnUserAllocation::OrHash)
        ).returns(T.attached_class)
      end
      def self.new(
        # Low and high estimate of the yield of an earn asset.
        apr_estimate:,
        # User allocation for an earn asset.
        user_allocation: nil
      )
      end

      sig do
        override.returns(
          {
            apr_estimate: T.nilable(Privy::KrakenEmbedEarnAprEstimate),
            user_allocation: T.nilable(Privy::KrakenEmbedEarnUserAllocation)
          }
        )
      end
      def to_hash
      end
    end
  end
end
