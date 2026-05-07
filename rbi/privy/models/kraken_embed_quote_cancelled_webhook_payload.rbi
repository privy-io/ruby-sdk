# typed: strong

module Privy
  module Models
    class KrakenEmbedQuoteCancelledWebhookPayload < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::KrakenEmbedQuoteCancelledWebhookPayload,
            Privy::Internal::AnyHash
          )
        end

      # ISO 8601 timestamp of when the quote was cancelled.
      sig { returns(String) }
      attr_accessor :cancelled_at

      # The ID of the cancelled quote.
      sig { returns(String) }
      attr_accessor :quote_id

      # A human-readable description of why the quote was cancelled. Intended for
      # display and logging purposes only.
      sig { returns(String) }
      attr_accessor :reason

      # The type of webhook event.
      sig do
        returns(Privy::KrakenEmbedQuoteCancelledWebhookPayload::Type::OrSymbol)
      end
      attr_accessor :type

      # The ID of the user.
      sig { returns(String) }
      attr_accessor :user_id

      # Payload for the kraken_embed.quote.cancelled webhook event.
      sig do
        params(
          cancelled_at: String,
          quote_id: String,
          reason: String,
          type: Privy::KrakenEmbedQuoteCancelledWebhookPayload::Type::OrSymbol,
          user_id: String
        ).returns(T.attached_class)
      end
      def self.new(
        # ISO 8601 timestamp of when the quote was cancelled.
        cancelled_at:,
        # The ID of the cancelled quote.
        quote_id:,
        # A human-readable description of why the quote was cancelled. Intended for
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
            cancelled_at: String,
            quote_id: String,
            reason: String,
            type:
              Privy::KrakenEmbedQuoteCancelledWebhookPayload::Type::OrSymbol,
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
            T.all(Symbol, Privy::KrakenEmbedQuoteCancelledWebhookPayload::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        KRAKEN_EMBED_QUOTE_CANCELLED =
          T.let(
            :"kraken_embed.quote.cancelled",
            Privy::KrakenEmbedQuoteCancelledWebhookPayload::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::KrakenEmbedQuoteCancelledWebhookPayload::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
