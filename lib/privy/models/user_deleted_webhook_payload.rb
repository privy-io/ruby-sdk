# frozen_string_literal: true

module Privy
  module Models
    class UserDeletedWebhookPayload < Privy::Internal::Type::BaseModel
      # @!attribute type
      #   The type of webhook event.
      #
      #   @return [Symbol, Privy::Models::UserDeletedWebhookPayload::Type]
      required :type, enum: -> { Privy::UserDeletedWebhookPayload::Type }

      # @!attribute user
      #   A Privy user object.
      #
      #   @return [Privy::Models::User]
      required :user, -> { Privy::User }

      # @!method initialize(type:, user:)
      #   Payload for the user.deleted webhook event.
      #
      #   @param type [Symbol, Privy::Models::UserDeletedWebhookPayload::Type] The type of webhook event.
      #
      #   @param user [Privy::Models::User] A Privy user object.

      # The type of webhook event.
      #
      # @see Privy::Models::UserDeletedWebhookPayload#type
      module Type
        extend Privy::Internal::Type::Enum

        USER_DELETED = :"user.deleted"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
