# frozen_string_literal: true

module Privy
  module Models
    class KrakenEmbedCustomOrderExecutedWebhookPayload < Privy::Internal::Type::BaseModel
      # @!attribute custom_order_id
      #   The ID of the executed custom order.
      #
      #   @return [String]
      required :custom_order_id, String

      # @!attribute executed_at
      #   ISO 8601 timestamp of when the custom order was executed.
      #
      #   @return [String]
      required :executed_at, String

      # @!attribute type
      #   The type of webhook event.
      #
      #   @return [Symbol, Privy::Models::KrakenEmbedCustomOrderExecutedWebhookPayload::Type]
      required :type, enum: -> { Privy::KrakenEmbedCustomOrderExecutedWebhookPayload::Type }

      # @!attribute user_id
      #   The ID of the user.
      #
      #   @return [String]
      required :user_id, String

      # @!method initialize(custom_order_id:, executed_at:, type:, user_id:)
      #   Payload for the kraken_embed.custom_order.executed webhook event.
      #
      #   @param custom_order_id [String] The ID of the executed custom order.
      #
      #   @param executed_at [String] ISO 8601 timestamp of when the custom order was executed.
      #
      #   @param type [Symbol, Privy::Models::KrakenEmbedCustomOrderExecutedWebhookPayload::Type] The type of webhook event.
      #
      #   @param user_id [String] The ID of the user.

      # The type of webhook event.
      #
      # @see Privy::Models::KrakenEmbedCustomOrderExecutedWebhookPayload#type
      module Type
        extend Privy::Internal::Type::Enum

        KRAKEN_EMBED_CUSTOM_ORDER_EXECUTED = :"kraken_embed.custom_order.executed"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
