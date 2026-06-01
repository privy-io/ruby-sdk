# typed: strong

module Privy
  module Models
    class KrakenEmbedCustomOrderCancelledWebhookPayload < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::KrakenEmbedCustomOrderCancelledWebhookPayload,
            Privy::Internal::AnyHash
          )
        end

      # ISO 8601 timestamp of when the custom order was cancelled.
      sig { returns(String) }
      attr_accessor :cancelled_at

      # The ID of the cancelled custom order.
      sig { returns(String) }
      attr_accessor :custom_order_id

      # A human-readable description of why the custom order was cancelled. Intended for
      # display and logging purposes only.
      sig { returns(String) }
      attr_accessor :reason

      # The type of webhook event.
      sig do
        returns(
          Privy::KrakenEmbedCustomOrderCancelledWebhookPayload::Type::OrSymbol
        )
      end
      attr_accessor :type

      # The ID of the user.
      sig { returns(String) }
      attr_accessor :user_id

      # Payload for the kraken_embed.custom_order.cancelled webhook event.
      sig do
        params(
          cancelled_at: String,
          custom_order_id: String,
          reason: String,
          type:
            Privy::KrakenEmbedCustomOrderCancelledWebhookPayload::Type::OrSymbol,
          user_id: String
        ).returns(T.attached_class)
      end
      def self.new(
        # ISO 8601 timestamp of when the custom order was cancelled.
        cancelled_at:,
        # The ID of the cancelled custom order.
        custom_order_id:,
        # A human-readable description of why the custom order was cancelled. Intended for
        # display and logging purposes only.
        reason:,
        # The type of webhook event.
        type:,
        # The ID of the user.
        user_id:
      )
      end

      sig do
        override.returns(
          {
            cancelled_at: String,
            custom_order_id: String,
            reason: String,
            type:
              Privy::KrakenEmbedCustomOrderCancelledWebhookPayload::Type::OrSymbol,
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
              Privy::KrakenEmbedCustomOrderCancelledWebhookPayload::Type
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        KRAKEN_EMBED_CUSTOM_ORDER_CANCELLED =
          T.let(
            :"kraken_embed.custom_order.cancelled",
            Privy::KrakenEmbedCustomOrderCancelledWebhookPayload::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::KrakenEmbedCustomOrderCancelledWebhookPayload::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
