# typed: strong

module Privy
  module Models
    class KrakenEmbedListCustomOrdersResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::KrakenEmbedListCustomOrdersResponse,
            Privy::Internal::AnyHash
          )
        end

      # Result payload for list custom orders response.
      sig { returns(Privy::KrakenEmbedListCustomOrdersResponse::Result) }
      attr_reader :result

      sig do
        params(
          result: Privy::KrakenEmbedListCustomOrdersResponse::Result::OrHash
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

      # Response body for listing custom orders.
      sig do
        params(
          result: Privy::KrakenEmbedListCustomOrdersResponse::Result::OrHash,
          error: T::Array[T.anything],
          errors: T::Array[T.anything]
        ).returns(T.attached_class)
      end
      def self.new(
        # Result payload for list custom orders response.
        result:,
        error: nil,
        errors: nil
      )
      end

      sig do
        override.returns(
          {
            result: Privy::KrakenEmbedListCustomOrdersResponse::Result,
            error: T::Array[T.anything],
            errors: T::Array[T.anything]
          }
        )
      end
      def to_hash
      end

      class Result < Privy::Models::KrakenEmbedListCustomOrdersResult
        OrHash =
          T.type_alias do
            T.any(
              Privy::KrakenEmbedListCustomOrdersResponse::Result,
              Privy::Internal::AnyHash
            )
          end

        # Result payload for list custom orders response.
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
