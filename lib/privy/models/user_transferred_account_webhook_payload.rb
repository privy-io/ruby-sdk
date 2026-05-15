# frozen_string_literal: true

module Privy
  module Models
    class UserTransferredAccountWebhookPayload < Privy::Internal::Type::BaseModel
      # @!attribute account
      #   A linked account for the user.
      #
      #   @return [Privy::Models::LinkedAccountEmail, Privy::Models::LinkedAccountPhone, Privy::Models::LinkedAccountEthereum, Privy::Models::LinkedAccountSolana, Privy::Models::LinkedAccountSmartWallet, Privy::Models::LinkedAccountEthereumEmbeddedWallet, Privy::Models::LinkedAccountSolanaEmbeddedWallet, Privy::Models::LinkedAccountBitcoinSegwitEmbeddedWallet, Privy::Models::LinkedAccountBitcoinTaprootEmbeddedWallet, Privy::Models::LinkedAccountCurveSigningEmbeddedWallet, Privy::Models::LinkedAccountGoogleOAuth, Privy::Models::LinkedAccountTwitterOAuth, Privy::Models::LinkedAccountDiscordOAuth, Privy::Models::LinkedAccountGitHubOAuth, Privy::Models::LinkedAccountSpotifyOAuth, Privy::Models::LinkedAccountInstagramOAuth, Privy::Models::LinkedAccountTiktokOAuth, Privy::Models::LinkedAccountLineOAuth, Privy::Models::LinkedAccountTwitchOAuth, Privy::Models::LinkedAccountLinkedInOAuth, Privy::Models::LinkedAccountAppleOAuth, Privy::Models::LinkedAccountCustomOAuth, Privy::Models::LinkedAccountCustomJwt, Privy::Models::LinkedAccountFarcaster, Privy::Models::LinkedAccountPasskey, Privy::Models::LinkedAccountTelegram, Privy::Models::LinkedAccountCrossApp, Privy::Models::LinkedAccountAuthorizationKey]
      required :account, union: -> { Privy::LinkedAccount }

      # @!attribute deleted_user
      #
      #   @return [Boolean, Privy::Models::UserTransferredAccountWebhookPayload::DeletedUser]
      required :deleted_user,
               enum: -> { Privy::UserTransferredAccountWebhookPayload::DeletedUser },
               api_name: :deletedUser

      # @!attribute from_user
      #
      #   @return [Privy::Models::UserTransferredAccountWebhookPayload::FromUser]
      required :from_user, -> { Privy::UserTransferredAccountWebhookPayload::FromUser }, api_name: :fromUser

      # @!attribute to_user
      #   A Privy user object.
      #
      #   @return [Privy::Models::User]
      required :to_user, -> { Privy::User }, api_name: :toUser

      # @!attribute type
      #   The type of webhook event.
      #
      #   @return [Symbol, Privy::Models::UserTransferredAccountWebhookPayload::Type]
      required :type, enum: -> { Privy::UserTransferredAccountWebhookPayload::Type }

      # @!method initialize(account:, deleted_user:, from_user:, to_user:, type:)
      #   Payload for the user.transferred_account webhook event.
      #
      #   @param account [Privy::Models::LinkedAccountEmail, Privy::Models::LinkedAccountPhone, Privy::Models::LinkedAccountEthereum, Privy::Models::LinkedAccountSolana, Privy::Models::LinkedAccountSmartWallet, Privy::Models::LinkedAccountEthereumEmbeddedWallet, Privy::Models::LinkedAccountSolanaEmbeddedWallet, Privy::Models::LinkedAccountBitcoinSegwitEmbeddedWallet, Privy::Models::LinkedAccountBitcoinTaprootEmbeddedWallet, Privy::Models::LinkedAccountCurveSigningEmbeddedWallet, Privy::Models::LinkedAccountGoogleOAuth, Privy::Models::LinkedAccountTwitterOAuth, Privy::Models::LinkedAccountDiscordOAuth, Privy::Models::LinkedAccountGitHubOAuth, Privy::Models::LinkedAccountSpotifyOAuth, Privy::Models::LinkedAccountInstagramOAuth, Privy::Models::LinkedAccountTiktokOAuth, Privy::Models::LinkedAccountLineOAuth, Privy::Models::LinkedAccountTwitchOAuth, Privy::Models::LinkedAccountLinkedInOAuth, Privy::Models::LinkedAccountAppleOAuth, Privy::Models::LinkedAccountCustomOAuth, Privy::Models::LinkedAccountCustomJwt, Privy::Models::LinkedAccountFarcaster, Privy::Models::LinkedAccountPasskey, Privy::Models::LinkedAccountTelegram, Privy::Models::LinkedAccountCrossApp, Privy::Models::LinkedAccountAuthorizationKey] A linked account for the user.
      #
      #   @param deleted_user [Boolean, Privy::Models::UserTransferredAccountWebhookPayload::DeletedUser]
      #
      #   @param from_user [Privy::Models::UserTransferredAccountWebhookPayload::FromUser]
      #
      #   @param to_user [Privy::Models::User] A Privy user object.
      #
      #   @param type [Symbol, Privy::Models::UserTransferredAccountWebhookPayload::Type] The type of webhook event.

      # @see Privy::Models::UserTransferredAccountWebhookPayload#deleted_user
      module DeletedUser
        extend Privy::Internal::Type::Enum

        TRUE = true

        # @!method self.values
        #   @return [Array<Boolean>]
      end

      # @see Privy::Models::UserTransferredAccountWebhookPayload#from_user
      class FromUser < Privy::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!method initialize(id:)
        #   @param id [String]
      end

      # The type of webhook event.
      #
      # @see Privy::Models::UserTransferredAccountWebhookPayload#type
      module Type
        extend Privy::Internal::Type::Enum

        USER_TRANSFERRED_ACCOUNT = :"user.transferred_account"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
