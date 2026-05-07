# frozen_string_literal: true

module Privy
  module Models
    class KrakenEmbedQuoteExecutionFailedWebhookPayload < Privy::Internal::Type::BaseModel
      # @!attribute failed_at
      #   ISO 8601 timestamp of when the quote execution failed.
      #
      #   @return [String]
      required :failed_at, String

      # @!attribute quote_id
      #   The ID of the quote that failed to execute.
      #
      #   @return [String]
      required :quote_id, String

      # @!attribute reason
      #   A human-readable description of why the quote execution failed. Intended for
      #   display and logging purposes only.
      #
      #   @return [String]
      required :reason, String

      # @!attribute type
      #   The type of webhook event.
      #
      #   @return [Symbol, Privy::Models::KrakenEmbedQuoteExecutionFailedWebhookPayload::Type]
      required :type, enum: -> { Privy::KrakenEmbedQuoteExecutionFailedWebhookPayload::Type }

      # @!attribute user_id
      #   The ID of the user.
      #
      #   @return [String]
      required :user_id, String

      # @!method initialize(failed_at:, quote_id:, reason:, type:, user_id:)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::KrakenEmbedQuoteExecutionFailedWebhookPayload} for more details.
      #
      #   Payload for the kraken_embed.quote.execution_failed webhook event.
      #
      #   @param failed_at [String] ISO 8601 timestamp of when the quote execution failed.
      #
      #   @param quote_id [String] The ID of the quote that failed to execute.
      #
      #   @param reason [String] A human-readable description of why the quote execution failed. Intended for dis
      #
      #   @param type [Symbol, Privy::Models::KrakenEmbedQuoteExecutionFailedWebhookPayload::Type] The type of webhook event.
      #
      #   @param user_id [String] The ID of the user.

      # The type of webhook event.
      #
      # @see Privy::Models::KrakenEmbedQuoteExecutionFailedWebhookPayload#type
      module Type
        extend Privy::Internal::Type::Enum

        KRAKEN_EMBED_QUOTE_EXECUTION_FAILED = :"kraken_embed.quote.execution_failed"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
