# frozen_string_literal: true

module Privy
  module Models
    class UserUnlinkedAccountWebhookPayload < Privy::Internal::Type::BaseModel
      # @!attribute account
      #   A linked account for the user.
      #
      #   @return [Privy::Models::LinkedAccountEmail, Privy::Models::LinkedAccountPhone, Privy::Models::LinkedAccountEthereum, Privy::Models::LinkedAccountSolana, Privy::Models::LinkedAccountSmartWallet, Privy::Models::LinkedAccountEthereumEmbeddedWallet, Privy::Models::LinkedAccountSolanaEmbeddedWallet, Privy::Models::LinkedAccountBitcoinSegwitEmbeddedWallet, Privy::Models::LinkedAccountBitcoinTaprootEmbeddedWallet, Privy::Models::LinkedAccountCurveSigningEmbeddedWallet, Privy::Models::LinkedAccountGoogleOAuth, Privy::Models::LinkedAccountTwitterOAuth, Privy::Models::LinkedAccountDiscordOAuth, Privy::Models::LinkedAccountGitHubOAuth, Privy::Models::LinkedAccountSpotifyOAuth, Privy::Models::LinkedAccountInstagramOAuth, Privy::Models::LinkedAccountTiktokOAuth, Privy::Models::LinkedAccountLineOAuth, Privy::Models::LinkedAccountTwitchOAuth, Privy::Models::LinkedAccountLinkedInOAuth, Privy::Models::LinkedAccountAppleOAuth, Privy::Models::LinkedAccountCustomOAuth, Privy::Models::LinkedAccountCustomJwt, Privy::Models::LinkedAccountFarcaster, Privy::Models::LinkedAccountPasskey, Privy::Models::LinkedAccountTelegram, Privy::Models::LinkedAccountCrossApp, Privy::Models::LinkedAccountAuthorizationKey]
      required :account, union: -> { Privy::LinkedAccount }

      # @!attribute type
      #   The type of webhook event.
      #
      #   @return [Symbol, Privy::Models::UserUnlinkedAccountWebhookPayload::Type]
      required :type, enum: -> { Privy::UserUnlinkedAccountWebhookPayload::Type }

      # @!attribute user
      #   A Privy user object.
      #
      #   @return [Privy::Models::User]
      required :user, -> { Privy::User }

      # @!method initialize(account:, type:, user:)
      #   Payload for the user.unlinked_account webhook event.
      #
      #   @param account [Privy::Models::LinkedAccountEmail, Privy::Models::LinkedAccountPhone, Privy::Models::LinkedAccountEthereum, Privy::Models::LinkedAccountSolana, Privy::Models::LinkedAccountSmartWallet, Privy::Models::LinkedAccountEthereumEmbeddedWallet, Privy::Models::LinkedAccountSolanaEmbeddedWallet, Privy::Models::LinkedAccountBitcoinSegwitEmbeddedWallet, Privy::Models::LinkedAccountBitcoinTaprootEmbeddedWallet, Privy::Models::LinkedAccountCurveSigningEmbeddedWallet, Privy::Models::LinkedAccountGoogleOAuth, Privy::Models::LinkedAccountTwitterOAuth, Privy::Models::LinkedAccountDiscordOAuth, Privy::Models::LinkedAccountGitHubOAuth, Privy::Models::LinkedAccountSpotifyOAuth, Privy::Models::LinkedAccountInstagramOAuth, Privy::Models::LinkedAccountTiktokOAuth, Privy::Models::LinkedAccountLineOAuth, Privy::Models::LinkedAccountTwitchOAuth, Privy::Models::LinkedAccountLinkedInOAuth, Privy::Models::LinkedAccountAppleOAuth, Privy::Models::LinkedAccountCustomOAuth, Privy::Models::LinkedAccountCustomJwt, Privy::Models::LinkedAccountFarcaster, Privy::Models::LinkedAccountPasskey, Privy::Models::LinkedAccountTelegram, Privy::Models::LinkedAccountCrossApp, Privy::Models::LinkedAccountAuthorizationKey] A linked account for the user.
      #
      #   @param type [Symbol, Privy::Models::UserUnlinkedAccountWebhookPayload::Type] The type of webhook event.
      #
      #   @param user [Privy::Models::User] A Privy user object.

      # The type of webhook event.
      #
      # @see Privy::Models::UserUnlinkedAccountWebhookPayload#type
      module Type
        extend Privy::Internal::Type::Enum

        USER_UNLINKED_ACCOUNT = :"user.unlinked_account"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
