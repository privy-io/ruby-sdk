# frozen_string_literal: true

module Privy
  module Models
    class KrakenEmbedCustomOrderExecutionFailedWebhookPayload < Privy::Internal::Type::BaseModel
      # @!attribute custom_order_id
      #   The ID of the custom order that failed to execute.
      #
      #   @return [String]
      required :custom_order_id, String

      # @!attribute failed_at
      #   ISO 8601 timestamp of when the custom order execution failed.
      #
      #   @return [String]
      required :failed_at, String

      # @!attribute reason
      #   A human-readable description of why the custom order execution failed. Intended
      #   for display and logging purposes only.
      #
      #   @return [String]
      required :reason, String

      # @!attribute type
      #   The type of webhook event.
      #
      #   @return [Symbol, Privy::Models::KrakenEmbedCustomOrderExecutionFailedWebhookPayload::Type]
      required :type, enum: -> { Privy::KrakenEmbedCustomOrderExecutionFailedWebhookPayload::Type }

      # @!attribute user_id
      #   The ID of the user.
      #
      #   @return [String]
      required :user_id, String

      # @!method initialize(custom_order_id:, failed_at:, reason:, type:, user_id:)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::KrakenEmbedCustomOrderExecutionFailedWebhookPayload} for more
      #   details.
      #
      #   Payload for the kraken_embed.custom_order.execution_failed webhook event.
      #
      #   @param custom_order_id [String] The ID of the custom order that failed to execute.
      #
      #   @param failed_at [String] ISO 8601 timestamp of when the custom order execution failed.
      #
      #   @param reason [String] A human-readable description of why the custom order execution failed. Intended
      #
      #   @param type [Symbol, Privy::Models::KrakenEmbedCustomOrderExecutionFailedWebhookPayload::Type] The type of webhook event.
      #
      #   @param user_id [String] The ID of the user.

      # The type of webhook event.
      #
      # @see Privy::Models::KrakenEmbedCustomOrderExecutionFailedWebhookPayload#type
      module Type
        extend Privy::Internal::Type::Enum

        KRAKEN_EMBED_CUSTOM_ORDER_EXECUTION_FAILED = :"kraken_embed.custom_order.execution_failed"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
