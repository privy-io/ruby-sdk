# frozen_string_literal: true

module Privy
  module Models
    class KrakenEmbedQuoteExecutedWebhookPayload < Privy::Internal::Type::BaseModel
      # @!attribute executed_at
      #   ISO 8601 timestamp of when the quote was executed.
      #
      #   @return [String]
      required :executed_at, String

      # @!attribute quote_id
      #   The ID of the executed quote.
      #
      #   @return [String]
      required :quote_id, String

      # @!attribute type
      #   The type of webhook event.
      #
      #   @return [Symbol, Privy::Models::KrakenEmbedQuoteExecutedWebhookPayload::Type]
      required :type, enum: -> { Privy::KrakenEmbedQuoteExecutedWebhookPayload::Type }

      # @!attribute user_id
      #   The ID of the user.
      #
      #   @return [String]
      required :user_id, String

      # @!method initialize(executed_at:, quote_id:, type:, user_id:)
      #   Payload for the kraken_embed.quote_executed webhook event.
      #
      #   @param executed_at [String] ISO 8601 timestamp of when the quote was executed.
      #
      #   @param quote_id [String] The ID of the executed quote.
      #
      #   @param type [Symbol, Privy::Models::KrakenEmbedQuoteExecutedWebhookPayload::Type] The type of webhook event.
      #
      #   @param user_id [String] The ID of the user.

      # The type of webhook event.
      #
      # @see Privy::Models::KrakenEmbedQuoteExecutedWebhookPayload#type
      module Type
        extend Privy::Internal::Type::Enum

        KRAKEN_EMBED_QUOTE_EXECUTED = :"kraken_embed.quote.executed"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
