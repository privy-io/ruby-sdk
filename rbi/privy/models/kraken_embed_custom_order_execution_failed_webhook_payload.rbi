# typed: strong

module Privy
  module Models
    class KrakenEmbedCustomOrderExecutionFailedWebhookPayload < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::KrakenEmbedCustomOrderExecutionFailedWebhookPayload,
            Privy::Internal::AnyHash
          )
        end

      # The ID of the custom order that failed to execute.
      sig { returns(String) }
      attr_accessor :custom_order_id

      # ISO 8601 timestamp of when the custom order execution failed.
      sig { returns(String) }
      attr_accessor :failed_at

      # A human-readable description of why the custom order execution failed. Intended
      # for display and logging purposes only.
      sig { returns(String) }
      attr_accessor :reason

      # The type of webhook event.
      sig do
        returns(
          Privy::KrakenEmbedCustomOrderExecutionFailedWebhookPayload::Type::OrSymbol
        )
      end
      attr_accessor :type

      # The ID of the user.
      sig { returns(String) }
      attr_accessor :user_id

      # Payload for the kraken_embed.custom_order.execution_failed webhook event.
      sig do
        params(
          custom_order_id: String,
          failed_at: String,
          reason: String,
          type:
            Privy::KrakenEmbedCustomOrderExecutionFailedWebhookPayload::Type::OrSymbol,
          user_id: String
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of the custom order that failed to execute.
        custom_order_id:,
        # ISO 8601 timestamp of when the custom order execution failed.
        failed_at:,
        # A human-readable description of why the custom order execution failed. Intended
        # for display and logging purposes only.
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
            custom_order_id: String,
            failed_at: String,
            reason: String,
            type:
              Privy::KrakenEmbedCustomOrderExecutionFailedWebhookPayload::Type::OrSymbol,
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
              Privy::KrakenEmbedCustomOrderExecutionFailedWebhookPayload::Type
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        KRAKEN_EMBED_CUSTOM_ORDER_EXECUTION_FAILED =
          T.let(
            :"kraken_embed.custom_order.execution_failed",
            Privy::KrakenEmbedCustomOrderExecutionFailedWebhookPayload::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::KrakenEmbedCustomOrderExecutionFailedWebhookPayload::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
