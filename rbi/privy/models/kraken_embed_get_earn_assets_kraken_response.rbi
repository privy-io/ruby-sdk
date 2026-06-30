# typed: strong

module Privy
  module Models
    class KrakenEmbedGetEarnAssetsKrakenResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::KrakenEmbedGetEarnAssetsKrakenResponse,
            Privy::Internal::AnyHash
          )
        end

      # Result payload for earn assets response.
      sig { returns(T.nilable(Privy::KrakenEmbedGetEarnAssetsResult)) }
      attr_reader :result

      sig do
        params(
          result: T.nilable(Privy::KrakenEmbedGetEarnAssetsResult::OrHash)
        ).void
      end
      attr_writer :result

      sig { returns(T.nilable(T::Array[T.anything])) }
      attr_reader :error

      sig { params(error: T::Array[T.anything]).void }
      attr_writer :error

      sig { returns(T.nilable(T::Array[T.anything])) }
      attr_reader :errors

      sig { params(errors: T::Array[T.anything]).void }
      attr_writer :errors

      # Kraken API response envelope for earn assets.
      sig do
        params(
          result: T.nilable(Privy::KrakenEmbedGetEarnAssetsResult::OrHash),
          error: T::Array[T.anything],
          errors: T::Array[T.anything]
        ).returns(T.attached_class)
      end
      def self.new(
        # Result payload for earn assets response.
        result:,
        error: nil,
        errors: nil
      )
      end

      sig do
        override.returns(
          {
            result: T.nilable(Privy::KrakenEmbedGetEarnAssetsResult),
            error: T::Array[T.anything],
            errors: T::Array[T.anything]
          }
        )
      end
      def to_hash
      end
    end
  end
end
