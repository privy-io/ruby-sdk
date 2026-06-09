# typed: strong

module Privy
  module Models
    class KrakenEmbedGetCustomOrderHistoryResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::KrakenEmbedGetCustomOrderHistoryResponse,
            Privy::Internal::AnyHash
          )
        end

      # Result payload for custom order history response.
      sig { returns(T.nilable(Privy::KrakenEmbedGetCustomOrderHistoryResult)) }
      attr_reader :result

      sig do
        params(
          result:
            T.nilable(Privy::KrakenEmbedGetCustomOrderHistoryResult::OrHash)
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

      # Response body for getting custom order execution history.
      sig do
        params(
          result:
            T.nilable(Privy::KrakenEmbedGetCustomOrderHistoryResult::OrHash),
          error: T::Array[T.anything],
          errors: T::Array[T.anything]
        ).returns(T.attached_class)
      end
      def self.new(
        # Result payload for custom order history response.
        result:,
        error: nil,
        errors: nil
      )
      end

      sig do
        override.returns(
          {
            result: T.nilable(Privy::KrakenEmbedGetCustomOrderHistoryResult),
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
