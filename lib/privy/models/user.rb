# frozen_string_literal: true

module Privy
  module Models
    # @see Privy::Resources::Users#create
    class User < Privy::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute created_at
      #   Unix timestamp of when the user was created in seconds.
      #
      #   @return [Float]
      required :created_at, Float

      # @!attribute has_accepted_terms
      #   Indicates if the user has accepted the terms of service.
      #
      #   @return [Boolean]
      required :has_accepted_terms, Privy::Internal::Type::Boolean

      # @!attribute is_guest
      #   Indicates if the user is a guest account user.
      #
      #   @return [Boolean]
      required :is_guest, Privy::Internal::Type::Boolean

      # @!attribute linked_accounts
      #
      #   @return [Array<Privy::Models::LinkedAccountEmail, Privy::Models::LinkedAccountPhone, Privy::Models::LinkedAccountEthereum, Privy::Models::LinkedAccountSolana, Privy::Models::LinkedAccountSmartWallet, Privy::Models::LinkedAccountEthereumEmbeddedWallet, Privy::Models::LinkedAccountSolanaEmbeddedWallet, Privy::Models::LinkedAccountBitcoinSegwitEmbeddedWallet, Privy::Models::LinkedAccountBitcoinTaprootEmbeddedWallet, Privy::Models::LinkedAccountCurveSigningEmbeddedWallet, Privy::Models::LinkedAccountGoogleOAuth, Privy::Models::LinkedAccountTwitterOAuth, Privy::Models::LinkedAccountDiscordOAuth, Privy::Models::LinkedAccountGitHubOAuth, Privy::Models::LinkedAccountSpotifyOAuth, Privy::Models::LinkedAccountInstagramOAuth, Privy::Models::LinkedAccountTiktokOAuth, Privy::Models::LinkedAccountLineOAuth, Privy::Models::LinkedAccountTwitchOAuth, Privy::Models::LinkedAccountLinkedInOAuth, Privy::Models::LinkedAccountAppleOAuth, Privy::Models::LinkedAccountCustomOAuth, Privy::Models::LinkedAccountCustomJwt, Privy::Models::LinkedAccountFarcaster, Privy::Models::LinkedAccountPasskey, Privy::Models::LinkedAccountTelegram, Privy::Models::LinkedAccountCrossApp, Privy::Models::LinkedAccountAuthorizationKey>]
      required :linked_accounts, -> { Privy::Internal::Type::ArrayOf[union: Privy::LinkedAccount] }

      # @!attribute mfa_methods
      #
      #   @return [Array<Privy::Models::SMSMfaMethod, Privy::Models::TotpMfaMethod, Privy::Models::PasskeyMfaMethod>]
      required :mfa_methods, -> { Privy::Internal::Type::ArrayOf[union: Privy::LinkedMfaMethod] }

      # @!attribute custom_metadata
      #   Custom metadata associated with the user.
      #
      #   @return [Hash{Symbol=>String, Float, Boolean}, nil]
      optional :custom_metadata, -> { Privy::Internal::Type::HashOf[union: Privy::CustomMetadataItem] }

      # @!method initialize(id:, created_at:, has_accepted_terms:, is_guest:, linked_accounts:, mfa_methods:, custom_metadata: nil)
      #   A Privy user object.
      #
      #   @param id [String]
      #
      #   @param created_at [Float] Unix timestamp of when the user was created in seconds.
      #
      #   @param has_accepted_terms [Boolean] Indicates if the user has accepted the terms of service.
      #
      #   @param is_guest [Boolean] Indicates if the user is a guest account user.
      #
      #   @param linked_accounts [Array<Privy::Models::LinkedAccountEmail, Privy::Models::LinkedAccountPhone, Privy::Models::LinkedAccountEthereum, Privy::Models::LinkedAccountSolana, Privy::Models::LinkedAccountSmartWallet, Privy::Models::LinkedAccountEthereumEmbeddedWallet, Privy::Models::LinkedAccountSolanaEmbeddedWallet, Privy::Models::LinkedAccountBitcoinSegwitEmbeddedWallet, Privy::Models::LinkedAccountBitcoinTaprootEmbeddedWallet, Privy::Models::LinkedAccountCurveSigningEmbeddedWallet, Privy::Models::LinkedAccountGoogleOAuth, Privy::Models::LinkedAccountTwitterOAuth, Privy::Models::LinkedAccountDiscordOAuth, Privy::Models::LinkedAccountGitHubOAuth, Privy::Models::LinkedAccountSpotifyOAuth, Privy::Models::LinkedAccountInstagramOAuth, Privy::Models::LinkedAccountTiktokOAuth, Privy::Models::LinkedAccountLineOAuth, Privy::Models::LinkedAccountTwitchOAuth, Privy::Models::LinkedAccountLinkedInOAuth, Privy::Models::LinkedAccountAppleOAuth, Privy::Models::LinkedAccountCustomOAuth, Privy::Models::LinkedAccountCustomJwt, Privy::Models::LinkedAccountFarcaster, Privy::Models::LinkedAccountPasskey, Privy::Models::LinkedAccountTelegram, Privy::Models::LinkedAccountCrossApp, Privy::Models::LinkedAccountAuthorizationKey>]
      #
      #   @param mfa_methods [Array<Privy::Models::SMSMfaMethod, Privy::Models::TotpMfaMethod, Privy::Models::PasskeyMfaMethod>]
      #
      #   @param custom_metadata [Hash{Symbol=>String, Float, Boolean}] Custom metadata associated with the user.
    end
  end
end
