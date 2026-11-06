# typed: strong

module Privy
  module Models
    class KrakenEmbedUserVerifiedWebhookPayload < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::KrakenEmbedUserVerifiedWebhookPayload,
            Privy::Internal::AnyHash
          )
        end

      # The ID of this event, stable across repeat deliveries so clients can deduplicate
      # on it.
      sig { returns(String) }
      attr_accessor :event_id

      # The type of webhook event.
      sig do
        returns(Privy::KrakenEmbedUserVerifiedWebhookPayload::Type::OrSymbol)
      end
      attr_accessor :type

      # The ID of the user.
      sig { returns(String) }
      attr_accessor :user_id

      # ISO 8601 timestamp of when the user was verified.
      sig { returns(String) }
      attr_accessor :verified_at

      # Payload for the kraken_embed.user.verified webhook event.
      sig do
        params(
          event_id: String,
          type: Privy::KrakenEmbedUserVerifiedWebhookPayload::Type::OrSymbol,
          user_id: String,
          verified_at: String
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of this event, stable across repeat deliveries so clients can deduplicate
        # on it.
        event_id:,
        # The type of webhook event.
        type:,
        # The ID of the user.
        user_id:,
        # ISO 8601 timestamp of when the user was verified.
        verified_at:
      )
      end

      sig do
        override.returns(
          {
            event_id: String,
            type: Privy::KrakenEmbedUserVerifiedWebhookPayload::Type::OrSymbol,
            user_id: String,
            verified_at: String
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
            T.all(Symbol, Privy::KrakenEmbedUserVerifiedWebhookPayload::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        KRAKEN_EMBED_USER_VERIFIED =
          T.let(
            :"kraken_embed.user.verified",
            Privy::KrakenEmbedUserVerifiedWebhookPayload::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::KrakenEmbedUserVerifiedWebhookPayload::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
