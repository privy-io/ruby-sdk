# typed: strong

module Privy
  module Models
    class KrakenEmbedUserDisabledWebhookPayload < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::KrakenEmbedUserDisabledWebhookPayload,
            Privy::Internal::AnyHash
          )
        end

      # ISO 8601 timestamp of when the user was disabled.
      sig { returns(String) }
      attr_accessor :disabled_at

      # The type of webhook event.
      sig do
        returns(Privy::KrakenEmbedUserDisabledWebhookPayload::Type::OrSymbol)
      end
      attr_accessor :type

      # The ID of the user.
      sig { returns(String) }
      attr_accessor :user_id

      # Payload for the kraken_embed.user.disabled webhook event.
      sig do
        params(
          disabled_at: String,
          type: Privy::KrakenEmbedUserDisabledWebhookPayload::Type::OrSymbol,
          user_id: String
        ).returns(T.attached_class)
      end
      def self.new(
        # ISO 8601 timestamp of when the user was disabled.
        disabled_at:,
        # The type of webhook event.
        type:,
        # The ID of the user.
        user_id:
      )
      end

      sig do
        override.returns(
          {
            disabled_at: String,
            type: Privy::KrakenEmbedUserDisabledWebhookPayload::Type::OrSymbol,
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
            T.all(Symbol, Privy::KrakenEmbedUserDisabledWebhookPayload::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        KRAKEN_EMBED_USER_DISABLED =
          T.let(
            :"kraken_embed.user.disabled",
            Privy::KrakenEmbedUserDisabledWebhookPayload::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::KrakenEmbedUserDisabledWebhookPayload::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
