# typed: strong

module Privy
  module Models
    class KrakenEmbedEarnAsset < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::KrakenEmbedEarnAsset, Privy::Internal::AnyHash)
        end

      # Low and high estimate of the yield of an earn asset.
      sig { returns(Privy::KrakenEmbedEarnAsset::AprEstimate) }
      attr_reader :apr_estimate

      sig do
        params(
          apr_estimate: Privy::KrakenEmbedEarnAsset::AprEstimate::OrHash
        ).void
      end
      attr_writer :apr_estimate

      # User allocation for an earn asset.
      sig { returns(T.nilable(Privy::KrakenEmbedEarnAsset::UserAllocation)) }
      attr_reader :user_allocation

      sig do
        params(
          user_allocation: Privy::KrakenEmbedEarnAsset::UserAllocation::OrHash
        ).void
      end
      attr_writer :user_allocation

      # A single asset that can yield rewards.
      sig do
        params(
          apr_estimate: Privy::KrakenEmbedEarnAsset::AprEstimate::OrHash,
          user_allocation: Privy::KrakenEmbedEarnAsset::UserAllocation::OrHash
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
            apr_estimate: Privy::KrakenEmbedEarnAsset::AprEstimate,
            user_allocation: Privy::KrakenEmbedEarnAsset::UserAllocation
          }
        )
      end
      def to_hash
      end

      class AprEstimate < Privy::Models::KrakenEmbedEarnAprEstimate
        OrHash =
          T.type_alias do
            T.any(
              Privy::KrakenEmbedEarnAsset::AprEstimate,
              Privy::Internal::AnyHash
            )
          end

        # Low and high estimate of the yield of an earn asset.
        sig { returns(T.attached_class) }
        def self.new
        end

        sig { override.returns({}) }
        def to_hash
        end
      end

      class UserAllocation < Privy::Models::KrakenEmbedEarnUserAllocation
        OrHash =
          T.type_alias do
            T.any(
              Privy::KrakenEmbedEarnAsset::UserAllocation,
              Privy::Internal::AnyHash
            )
          end

        # User allocation for an earn asset.
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
