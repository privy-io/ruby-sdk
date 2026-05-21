# typed: strong

module Privy
  module Models
    class KrakenEmbedToggleAutoEarnResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::KrakenEmbedToggleAutoEarnResponse,
            Privy::Internal::AnyHash
          )
        end

      # Kraken API response envelope for toggle auto-earn. Result is null on success.
      sig { returns(Privy::KrakenEmbedToggleAutoEarnKrakenResponse) }
      attr_reader :data

      sig do
        params(
          data: Privy::KrakenEmbedToggleAutoEarnKrakenResponse::OrHash
        ).void
      end
      attr_writer :data

      # Response from toggling Auto-Earn. The response body is empty on success.
      sig do
        params(
          data: Privy::KrakenEmbedToggleAutoEarnKrakenResponse::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Kraken API response envelope for toggle auto-earn. Result is null on success.
        data:
      )
      end

      sig do
        override.returns(
          { data: Privy::KrakenEmbedToggleAutoEarnKrakenResponse }
        )
      end
      def to_hash
      end
    end
  end
end
