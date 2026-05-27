# typed: strong

module Privy
  module Models
    class KrakenEmbedCustomOrderExecutedWebhookPayload < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::KrakenEmbedCustomOrderExecutedWebhookPayload,
            Privy::Internal::AnyHash
          )
        end

      # The ID of the executed custom order.
      sig { returns(String) }
      attr_accessor :custom_order_id

      # ISO 8601 timestamp of when the custom order was executed.
      sig { returns(String) }
      attr_accessor :executed_at

      # The type of webhook event.
      sig do
        returns(
          Privy::KrakenEmbedCustomOrderExecutedWebhookPayload::Type::OrSymbol
        )
      end
      attr_accessor :type

      # The ID of the user.
      sig { returns(String) }
      attr_accessor :user_id

      # Payload for the kraken_embed.custom_order.executed webhook event.
      sig do
        params(
          custom_order_id: String,
          executed_at: String,
          type:
            Privy::KrakenEmbedCustomOrderExecutedWebhookPayload::Type::OrSymbol,
          user_id: String
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of the executed custom order.
        custom_order_id:,
        # ISO 8601 timestamp of when the custom order was executed.
        executed_at:,
        # The type of webhook event.
        type:,
        # The ID of the user.
        user_id:
      )
      end

      sig do
        override.returns(
          {
            custom_order_id: String,
            executed_at: String,
            type:
              Privy::KrakenEmbedCustomOrderExecutedWebhookPayload::Type::OrSymbol,
            user_id: String
          }
        )
      end
      def to_hash
      end

      # The type of webhook event.
      module Type
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Privy::KrakenEmbedCustomOrderExecutedWebhookPayload::Type
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        KRAKEN_EMBED_CUSTOM_ORDER_EXECUTED =
          T.let(
            :"kraken_embed.custom_order.executed",
            Privy::KrakenEmbedCustomOrderExecutedWebhookPayload::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::KrakenEmbedCustomOrderExecutedWebhookPayload::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
