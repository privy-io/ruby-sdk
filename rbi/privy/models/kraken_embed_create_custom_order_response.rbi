# typed: strong

module Privy
  module Models
    class KrakenEmbedCreateCustomOrderResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::KrakenEmbedCreateCustomOrderResponse,
            Privy::Internal::AnyHash
          )
        end

      # Result payload for create custom order response.
      sig { returns(Privy::KrakenEmbedCreateCustomOrderResponse::Result) }
      attr_reader :result

      sig do
        params(
          result: Privy::KrakenEmbedCreateCustomOrderResponse::Result::OrHash
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

      # Response body for creating a custom order.
      sig do
        params(
          result: Privy::KrakenEmbedCreateCustomOrderResponse::Result::OrHash,
          error: T::Array[T.anything],
          errors: T::Array[T.anything]
        ).returns(T.attached_class)
      end
      def self.new(
        # Result payload for create custom order response.
        result:,
        error: nil,
        errors: nil
      )
      end

      sig do
        override.returns(
          {
            result: Privy::KrakenEmbedCreateCustomOrderResponse::Result,
            error: T::Array[T.anything],
            errors: T::Array[T.anything]
          }
        )
      end
      def to_hash
      end

      class Result < Privy::Models::KrakenEmbedCreateCustomOrderResult
        OrHash =
          T.type_alias do
            T.any(
              Privy::KrakenEmbedCreateCustomOrderResponse::Result,
              Privy::Internal::AnyHash
            )
          end

        # Result payload for create custom order response.
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
