# frozen_string_literal: true

module Privy
  module Models
    class UserCreatedWebhookPayload < Privy::Internal::Type::BaseModel
      # @!attribute type
      #   The type of webhook event.
      #
      #   @return [Symbol, Privy::Models::UserCreatedWebhookPayload::Type]
      required :type, enum: -> { Privy::UserCreatedWebhookPayload::Type }

      # @!attribute user
      #   A Privy user object.
      #
      #   @return [Privy::Models::User]
      required :user, -> { Privy::User }

      # @!method initialize(type:, user:)
      #   Payload for the user.created webhook event.
      #
      #   @param type [Symbol, Privy::Models::UserCreatedWebhookPayload::Type] The type of webhook event.
      #
      #   @param user [Privy::Models::User] A Privy user object.

      # The type of webhook event.
      #
      # @see Privy::Models::UserCreatedWebhookPayload#type
      module Type
        extend Privy::Internal::Type::Enum

        USER_CREATED = :"user.created"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
