# frozen_string_literal: true

module Privy
  module Models
    class KrakenEmbedUserClosedWebhookPayload < Privy::Internal::Type::BaseModel
      # @!attribute closed_at
      #   ISO 8601 timestamp of when the user was closed.
      #
      #   @return [String]
      required :closed_at, String

      # @!attribute event_id
      #   The ID of this event, stable across repeat deliveries so clients can deduplicate
      #   on it.
      #
      #   @return [String]
      required :event_id, String

      # @!attribute type
      #   The type of webhook event.
      #
      #   @return [Symbol, Privy::Models::KrakenEmbedUserClosedWebhookPayload::Type]
      required :type, enum: -> { Privy::KrakenEmbedUserClosedWebhookPayload::Type }

      # @!attribute user_id
      #   The ID of the user.
      #
      #   @return [String]
      required :user_id, String

      # @!method initialize(closed_at:, event_id:, type:, user_id:)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::KrakenEmbedUserClosedWebhookPayload} for more details.
      #
      #   Payload for the kraken_embed.user.closed webhook event.
      #
      #   @param closed_at [String] ISO 8601 timestamp of when the user was closed.
      #
      #   @param event_id [String] The ID of this event, stable across repeat deliveries so clients can deduplicate
      #
      #   @param type [Symbol, Privy::Models::KrakenEmbedUserClosedWebhookPayload::Type] The type of webhook event.
      #
      #   @param user_id [String] The ID of the user.

      # The type of webhook event.
      #
      # @see Privy::Models::KrakenEmbedUserClosedWebhookPayload#type
      module Type
        extend Privy::Internal::Type::Enum

        KRAKEN_EMBED_USER_CLOSED = :"kraken_embed.user.closed"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
