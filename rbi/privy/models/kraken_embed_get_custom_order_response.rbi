# typed: strong

module Privy
  module Models
    class KrakenEmbedGetCustomOrderResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::KrakenEmbedGetCustomOrderResponse,
            Privy::Internal::AnyHash
          )
        end

      # Result payload for get custom order response.
      sig { returns(Privy::KrakenEmbedGetCustomOrderResponse::Result) }
      attr_reader :result

      sig do
        params(
          result: Privy::KrakenEmbedGetCustomOrderResponse::Result::OrHash
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

      # Response body for getting a single custom order.
      sig do
        params(
          result: Privy::KrakenEmbedGetCustomOrderResponse::Result::OrHash,
          error: T::Array[T.anything],
          errors: T::Array[T.anything]
        ).returns(T.attached_class)
      end
      def self.new(
        # Result payload for get custom order response.
        result:,
        error: nil,
        errors: nil
      )
      end

      sig do
        override.returns(
          {
            result: Privy::KrakenEmbedGetCustomOrderResponse::Result,
            error: T::Array[T.anything],
            errors: T::Array[T.anything]
          }
        )
      end
      def to_hash
      end

      class Result < Privy::Models::KrakenEmbedGetCustomOrderResult
        OrHash =
          T.type_alias do
            T.any(
              Privy::KrakenEmbedGetCustomOrderResponse::Result,
              Privy::Internal::AnyHash
            )
          end

        # Result payload for get custom order response.
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
