# typed: strong

module Privy
  module Models
    class KrakenEmbedQuoteExecutionFailedWebhookPayload < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::KrakenEmbedQuoteExecutionFailedWebhookPayload,
            Privy::Internal::AnyHash
          )
        end

      # ISO 8601 timestamp of when the quote execution failed.
      sig { returns(String) }
      attr_accessor :failed_at

      # The ID of the quote that failed to execute.
      sig { returns(String) }
      attr_accessor :quote_id

      # A human-readable description of why the quote execution failed. Intended for
      # display and logging purposes only.
      sig { returns(String) }
      attr_accessor :reason

      # The type of webhook event.
      sig do
        returns(
          Privy::KrakenEmbedQuoteExecutionFailedWebhookPayload::Type::OrSymbol
        )
      end
      attr_accessor :type

      # The ID of the user.
      sig { returns(String) }
      attr_accessor :user_id

      # Payload for the kraken_embed.quote.execution_failed webhook event.
      sig do
        params(
          failed_at: String,
          quote_id: String,
          reason: String,
          type:
            Privy::KrakenEmbedQuoteExecutionFailedWebhookPayload::Type::OrSymbol,
          user_id: String
        ).returns(T.attached_class)
      end
      def self.new(
        # ISO 8601 timestamp of when the quote execution failed.
        failed_at:,
        # The ID of the quote that failed to execute.
        quote_id:,
        # A human-readable description of why the quote execution failed. Intended for
        # display and logging purposes only.
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
            failed_at: String,
            quote_id: String,
            reason: String,
            type:
              Privy::KrakenEmbedQuoteExecutionFailedWebhookPayload::Type::OrSymbol,
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
              Privy::KrakenEmbedQuoteExecutionFailedWebhookPayload::Type
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        KRAKEN_EMBED_QUOTE_EXECUTION_FAILED =
          T.let(
            :"kraken_embed.quote.execution_failed",
            Privy::KrakenEmbedQuoteExecutionFailedWebhookPayload::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::KrakenEmbedQuoteExecutionFailedWebhookPayload::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
