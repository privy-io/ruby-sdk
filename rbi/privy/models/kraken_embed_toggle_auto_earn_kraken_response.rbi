# typed: strong

module Privy
  module Models
    class KrakenEmbedToggleAutoEarnKrakenResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::KrakenEmbedToggleAutoEarnKrakenResponse,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(T::Array[T.anything])) }
      attr_reader :error

      sig { params(error: T::Array[T.anything]).void }
      attr_writer :error

      sig { returns(T.nilable(T::Array[T.anything])) }
      attr_reader :errors

      sig { params(errors: T::Array[T.anything]).void }
      attr_writer :errors

      sig { returns(NilClass) }
      attr_accessor :result

      # Kraken API response envelope for toggle auto-earn. Result is null on success.
      sig do
        params(
          error: T::Array[T.anything],
          errors: T::Array[T.anything],
          result: NilClass
        ).returns(T.attached_class)
      end
      def self.new(error: nil, errors: nil, result: nil)
      end

      sig do
        override.returns(
          {
            error: T::Array[T.anything],
            errors: T::Array[T.anything],
            result: NilClass
          }
        )
      end
      def to_hash
      end
    end
  end
end
