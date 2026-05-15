# frozen_string_literal: true

module Privy
  module Models
    class UserWalletCreatedWebhookPayload < Privy::Internal::Type::BaseModel
      # @!attribute type
      #   The type of webhook event.
      #
      #   @return [Symbol, Privy::Models::UserWalletCreatedWebhookPayload::Type]
      required :type, enum: -> { Privy::UserWalletCreatedWebhookPayload::Type }

      # @!attribute user
      #   A Privy user object.
      #
      #   @return [Privy::Models::User]
      required :user, -> { Privy::User }

      # @!attribute wallet
      #   Base schema for wallet accounts linked to the user.
      #
      #   @return [Privy::Models::LinkedAccountBaseWallet]
      required :wallet, -> { Privy::LinkedAccountBaseWallet }

      # @!method initialize(type:, user:, wallet:)
      #   Payload for the user.wallet_created webhook event.
      #
      #   @param type [Symbol, Privy::Models::UserWalletCreatedWebhookPayload::Type] The type of webhook event.
      #
      #   @param user [Privy::Models::User] A Privy user object.
      #
      #   @param wallet [Privy::Models::LinkedAccountBaseWallet] Base schema for wallet accounts linked to the user.

      # The type of webhook event.
      #
      # @see Privy::Models::UserWalletCreatedWebhookPayload#type
      module Type
        extend Privy::Internal::Type::Enum

        USER_WALLET_CREATED = :"user.wallet_created"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
