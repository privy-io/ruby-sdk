# typed: strong

module Privy
  module Models
    class KrakenEmbedGetEarnAssetsResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::KrakenEmbedGetEarnAssetsResponse,
            Privy::Internal::AnyHash
          )
        end

      # Kraken API response envelope for earn assets.
      sig { returns(Privy::KrakenEmbedGetEarnAssetsKrakenResponse) }
      attr_reader :data

      sig do
        params(data: Privy::KrakenEmbedGetEarnAssetsKrakenResponse::OrHash).void
      end
      attr_writer :data

      # List of earn assets with APR estimates and optional user allocations.
      sig do
        params(
          data: Privy::KrakenEmbedGetEarnAssetsKrakenResponse::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Kraken API response envelope for earn assets.
        data:
      )
      end

      sig do
        override.returns(
          { data: Privy::KrakenEmbedGetEarnAssetsKrakenResponse }
        )
      end
      def to_hash
      end
    end
  end
end
