# frozen_string_literal: true

module Privy
  module Models
    class KrakenEmbedQuoteCancelledWebhookPayload < Privy::Internal::Type::BaseModel
      # @!attribute cancelled_at
      #   ISO 8601 timestamp of when the quote was cancelled.
      #
      #   @return [String]
      required :cancelled_at, String

      # @!attribute quote_id
      #   The ID of the cancelled quote.
      #
      #   @return [String]
      required :quote_id, String

      # @!attribute reason
      #   A human-readable description of why the quote was cancelled. Intended for
      #   display and logging purposes only.
      #
      #   @return [String]
      required :reason, String

      # @!attribute type
      #   The type of webhook event.
      #
      #   @return [Symbol, Privy::Models::KrakenEmbedQuoteCancelledWebhookPayload::Type]
      required :type, enum: -> { Privy::KrakenEmbedQuoteCancelledWebhookPayload::Type }

      # @!attribute user_id
      #   The ID of the user.
      #
      #   @return [String]
      required :user_id, String

      # @!method initialize(cancelled_at:, quote_id:, reason:, type:, user_id:)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::KrakenEmbedQuoteCancelledWebhookPayload} for more details.
      #
      #   Payload for the kraken_embed.quote.cancelled webhook event.
      #
      #   @param cancelled_at [String] ISO 8601 timestamp of when the quote was cancelled.
      #
      #   @param quote_id [String] The ID of the cancelled quote.
      #
      #   @param reason [String] A human-readable description of why the quote was cancelled. Intended for displa
      #
      #   @param type [Symbol, Privy::Models::KrakenEmbedQuoteCancelledWebhookPayload::Type] The type of webhook event.
      #
      #   @param user_id [String] The ID of the user.

      # The type of webhook event.
      #
      # @see Privy::Models::KrakenEmbedQuoteCancelledWebhookPayload#type
      module Type
        extend Privy::Internal::Type::Enum

        KRAKEN_EMBED_QUOTE_CANCELLED = :"kraken_embed.quote.cancelled"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
