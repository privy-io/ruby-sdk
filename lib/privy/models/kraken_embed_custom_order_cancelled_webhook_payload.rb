# frozen_string_literal: true

module Privy
  module Models
    class KrakenEmbedCustomOrderCancelledWebhookPayload < Privy::Internal::Type::BaseModel
      # @!attribute cancelled_at
      #   ISO 8601 timestamp of when the custom order was cancelled.
      #
      #   @return [String]
      required :cancelled_at, String

      # @!attribute custom_order_id
      #   The ID of the cancelled custom order.
      #
      #   @return [String]
      required :custom_order_id, String

      # @!attribute reason
      #   A human-readable description of why the custom order was cancelled. Intended for
      #   display and logging purposes only.
      #
      #   @return [String]
      required :reason, String

      # @!attribute type
      #   The type of webhook event.
      #
      #   @return [Symbol, Privy::Models::KrakenEmbedCustomOrderCancelledWebhookPayload::Type]
      required :type, enum: -> { Privy::KrakenEmbedCustomOrderCancelledWebhookPayload::Type }

      # @!attribute user_id
      #   The ID of the user.
      #
      #   @return [String]
      required :user_id, String

      # @!method initialize(cancelled_at:, custom_order_id:, reason:, type:, user_id:)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::KrakenEmbedCustomOrderCancelledWebhookPayload} for more details.
      #
      #   Payload for the kraken_embed.custom_order.cancelled webhook event.
      #
      #   @param cancelled_at [String] ISO 8601 timestamp of when the custom order was cancelled.
      #
      #   @param custom_order_id [String] The ID of the cancelled custom order.
      #
      #   @param reason [String] A human-readable description of why the custom order was cancelled. Intended for
      #
      #   @param type [Symbol, Privy::Models::KrakenEmbedCustomOrderCancelledWebhookPayload::Type] The type of webhook event.
      #
      #   @param user_id [String] The ID of the user.

      # The type of webhook event.
      #
      # @see Privy::Models::KrakenEmbedCustomOrderCancelledWebhookPayload#type
      module Type
        extend Privy::Internal::Type::Enum

        KRAKEN_EMBED_CUSTOM_ORDER_CANCELLED = :"kraken_embed.custom_order.cancelled"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
