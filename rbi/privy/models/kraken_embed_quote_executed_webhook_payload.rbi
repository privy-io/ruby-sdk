# typed: strong

module Privy
  module Models
    class KrakenEmbedQuoteExecutedWebhookPayload < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::KrakenEmbedQuoteExecutedWebhookPayload,
            Privy::Internal::AnyHash
          )
        end

      # ISO 8601 timestamp of when the quote was executed.
      sig { returns(String) }
      attr_accessor :executed_at

      # The ID of the executed quote.
      sig { returns(String) }
      attr_accessor :quote_id

      # The type of webhook event.
      sig do
        returns(Privy::KrakenEmbedQuoteExecutedWebhookPayload::Type::OrSymbol)
      end
      attr_accessor :type

      # The ID of the user.
      sig { returns(String) }
      attr_accessor :user_id

      # Payload for the kraken_embed.quote_executed webhook event.
      sig do
        params(
          executed_at: String,
          quote_id: String,
          type: Privy::KrakenEmbedQuoteExecutedWebhookPayload::Type::OrSymbol,
          user_id: String
        ).returns(T.attached_class)
      end
      def self.new(
        # ISO 8601 timestamp of when the quote was executed.
        executed_at:,
        # The ID of the executed quote.
        quote_id:,
        # The type of webhook event.
        type:,
        # The ID of the user.
        user_id:
      )
      end

      sig do
        override.returns(
          {
            executed_at: String,
            quote_id: String,
            type: Privy::KrakenEmbedQuoteExecutedWebhookPayload::Type::OrSymbol,
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
            T.all(Symbol, Privy::KrakenEmbedQuoteExecutedWebhookPayload::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        KRAKEN_EMBED_QUOTE_EXECUTED =
          T.let(
            :"kraken_embed.quote.executed",
            Privy::KrakenEmbedQuoteExecutedWebhookPayload::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::KrakenEmbedQuoteExecutedWebhookPayload::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
