# typed: strong

module Privy
  module Models
    class KrakenEmbedUserClosedWebhookPayload < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::KrakenEmbedUserClosedWebhookPayload,
            Privy::Internal::AnyHash
          )
        end

      # ISO 8601 timestamp of when the user was closed.
      sig { returns(String) }
      attr_accessor :closed_at

      # The ID of this event, stable across repeat deliveries so clients can deduplicate
      # on it.
      sig { returns(String) }
      attr_accessor :event_id

      # The type of webhook event.
      sig do
        returns(Privy::KrakenEmbedUserClosedWebhookPayload::Type::OrSymbol)
      end
      attr_accessor :type

      # The ID of the user.
      sig { returns(String) }
      attr_accessor :user_id

      # Payload for the kraken_embed.user.closed webhook event.
      sig do
        params(
          closed_at: String,
          event_id: String,
          type: Privy::KrakenEmbedUserClosedWebhookPayload::Type::OrSymbol,
          user_id: String
        ).returns(T.attached_class)
      end
      def self.new(
        # ISO 8601 timestamp of when the user was closed.
        closed_at:,
        # The ID of this event, stable across repeat deliveries so clients can deduplicate
        # on it.
        event_id:,
        # The type of webhook event.
        type:,
        # The ID of the user.
        user_id:
      )
      end

      sig do
        override.returns(
          {
            closed_at: String,
            event_id: String,
            type: Privy::KrakenEmbedUserClosedWebhookPayload::Type::OrSymbol,
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
            T.all(Symbol, Privy::KrakenEmbedUserClosedWebhookPayload::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        KRAKEN_EMBED_USER_CLOSED =
          T.let(
            :"kraken_embed.user.closed",
            Privy::KrakenEmbedUserClosedWebhookPayload::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::KrakenEmbedUserClosedWebhookPayload::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
