# typed: strong

module Privy
  module Models
    class KrakenEmbedGetEarnAssetsResult < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::KrakenEmbedGetEarnAssetsResult, Privy::Internal::AnyHash)
        end

      sig { returns(T::Hash[Symbol, Privy::KrakenEmbedEarnAsset]) }
      attr_accessor :assets

      # Result payload for earn assets response.
      sig do
        params(
          assets: T::Hash[Symbol, Privy::KrakenEmbedEarnAsset::OrHash]
        ).returns(T.attached_class)
      end
      def self.new(assets:)
      end

      sig do
        override.returns(
          { assets: T::Hash[Symbol, Privy::KrakenEmbedEarnAsset] }
        )
      end
      def to_hash
      end
    end
  end
end
