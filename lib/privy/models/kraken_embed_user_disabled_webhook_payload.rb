# frozen_string_literal: true

module Privy
  module Models
    class KrakenEmbedUserDisabledWebhookPayload < Privy::Internal::Type::BaseModel
      # @!attribute disabled_at
      #   ISO 8601 timestamp of when the user was disabled.
      #
      #   @return [String]
      required :disabled_at, String

      # @!attribute event_id
      #   The ID of this event, stable across repeat deliveries so clients can deduplicate
      #   on it.
      #
      #   @return [String]
      required :event_id, String

      # @!attribute type
      #   The type of webhook event.
      #
      #   @return [Symbol, Privy::Models::KrakenEmbedUserDisabledWebhookPayload::Type]
      required :type, enum: -> { Privy::KrakenEmbedUserDisabledWebhookPayload::Type }

      # @!attribute user_id
      #   The ID of the user.
      #
      #   @return [String]
      required :user_id, String

      # @!method initialize(disabled_at:, event_id:, type:, user_id:)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::KrakenEmbedUserDisabledWebhookPayload} for more details.
      #
      #   Payload for the kraken_embed.user.disabled webhook event.
      #
      #   @param disabled_at [String] ISO 8601 timestamp of when the user was disabled.
      #
      #   @param event_id [String] The ID of this event, stable across repeat deliveries so clients can deduplicate
      #
      #   @param type [Symbol, Privy::Models::KrakenEmbedUserDisabledWebhookPayload::Type] The type of webhook event.
      #
      #   @param user_id [String] The ID of the user.

      # The type of webhook event.
      #
      # @see Privy::Models::KrakenEmbedUserDisabledWebhookPayload#type
      module Type
        extend Privy::Internal::Type::Enum

        KRAKEN_EMBED_USER_DISABLED = :"kraken_embed.user.disabled"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
