# frozen_string_literal: true

module Privy
  module Models
    class KrakenEmbedUserClosedWebhookPayload < Privy::Internal::Type::BaseModel
      # @!attribute closed_at
      #   ISO 8601 timestamp of when the user was closed.
      #
      #   @return [String]
      required :closed_at, String

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

      # @!method initialize(closed_at:, type:, user_id:)
      #   Payload for the kraken_embed.user.closed webhook event.
      #
      #   @param closed_at [String] ISO 8601 timestamp of when the user was closed.
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
