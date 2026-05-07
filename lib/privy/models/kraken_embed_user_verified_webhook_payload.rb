# frozen_string_literal: true

module Privy
  module Models
    class KrakenEmbedUserVerifiedWebhookPayload < Privy::Internal::Type::BaseModel
      # @!attribute type
      #   The type of webhook event.
      #
      #   @return [Symbol, Privy::Models::KrakenEmbedUserVerifiedWebhookPayload::Type]
      required :type, enum: -> { Privy::KrakenEmbedUserVerifiedWebhookPayload::Type }

      # @!attribute user_id
      #   The ID of the user.
      #
      #   @return [String]
      required :user_id, String

      # @!attribute verified_at
      #   ISO 8601 timestamp of when the user was verified.
      #
      #   @return [String]
      required :verified_at, String

      # @!method initialize(type:, user_id:, verified_at:)
      #   Payload for the kraken_embed.user.verified webhook event.
      #
      #   @param type [Symbol, Privy::Models::KrakenEmbedUserVerifiedWebhookPayload::Type] The type of webhook event.
      #
      #   @param user_id [String] The ID of the user.
      #
      #   @param verified_at [String] ISO 8601 timestamp of when the user was verified.

      # The type of webhook event.
      #
      # @see Privy::Models::KrakenEmbedUserVerifiedWebhookPayload#type
      module Type
        extend Privy::Internal::Type::Enum

        KRAKEN_EMBED_USER_VERIFIED = :"kraken_embed.user.verified"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
