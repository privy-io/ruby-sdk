# typed: strong

module Privy
  module Models
    class User < Privy::Internal::Type::BaseModel
      OrHash = T.type_alias { T.any(Privy::User, Privy::Internal::AnyHash) }

      sig { returns(String) }
      attr_accessor :id

      # Unix timestamp of when the user was created in seconds.
      sig { returns(Float) }
      attr_accessor :created_at

      # Indicates if the user has accepted the terms of service.
      sig { returns(T::Boolean) }
      attr_accessor :has_accepted_terms

      # Indicates if the user is a guest account user.
      sig { returns(T::Boolean) }
      attr_accessor :is_guest

      sig { returns(T::Array[Privy::LinkedAccount::Variants]) }
      attr_accessor :linked_accounts

      sig { returns(T::Array[Privy::LinkedMfaMethod::Variants]) }
      attr_accessor :mfa_methods

      # Custom metadata associated with the user.
      sig do
        returns(T.nilable(T::Hash[Symbol, Privy::CustomMetadataItem::Variants]))
      end
      attr_reader :custom_metadata

      sig do
        params(
          custom_metadata: T::Hash[Symbol, Privy::CustomMetadataItem::Variants]
        ).void
      end
      attr_writer :custom_metadata

      # A Privy user object.
      sig do
        params(
          id: String,
          created_at: Float,
          has_accepted_terms: T::Boolean,
          is_guest: T::Boolean,
          linked_accounts:
            T::Array[
              T.any(
                Privy::LinkedAccountEmail::OrHash,
                Privy::LinkedAccountPhone::OrHash,
                Privy::LinkedAccountEthereum::OrHash,
                Privy::LinkedAccountSolana::OrHash,
                Privy::LinkedAccountSmartWallet::OrHash,
                Privy::LinkedAccountEthereumEmbeddedWallet::OrHash,
                Privy::LinkedAccountSolanaEmbeddedWallet::OrHash,
                Privy::LinkedAccountBitcoinSegwitEmbeddedWallet::OrHash,
                Privy::LinkedAccountBitcoinTaprootEmbeddedWallet::OrHash,
                Privy::LinkedAccountCurveSigningEmbeddedWallet::OrHash,
                Privy::LinkedAccountGoogleOAuth::OrHash,
                Privy::LinkedAccountTwitterOAuth::OrHash,
                Privy::LinkedAccountDiscordOAuth::OrHash,
                Privy::LinkedAccountGitHubOAuth::OrHash,
                Privy::LinkedAccountSpotifyOAuth::OrHash,
                Privy::LinkedAccountInstagramOAuth::OrHash,
                Privy::LinkedAccountTiktokOAuth::OrHash,
                Privy::LinkedAccountLineOAuth::OrHash,
                Privy::LinkedAccountTwitchOAuth::OrHash,
                Privy::LinkedAccountLinkedInOAuth::OrHash,
                Privy::LinkedAccountAppleOAuth::OrHash,
                Privy::LinkedAccountCustomOAuth::OrHash,
                Privy::LinkedAccountCustomJwt::OrHash,
                Privy::LinkedAccountFarcaster::OrHash,
                Privy::LinkedAccountPasskey::OrHash,
                Privy::LinkedAccountTelegram::OrHash,
                Privy::LinkedAccountCrossApp::OrHash,
                Privy::LinkedAccountAuthorizationKey::OrHash
              )
            ],
          mfa_methods:
            T::Array[
              T.any(
                Privy::SMSMfaMethod::OrHash,
                Privy::TotpMfaMethod::OrHash,
                Privy::PasskeyMfaMethod::OrHash
              )
            ],
          custom_metadata: T::Hash[Symbol, Privy::CustomMetadataItem::Variants]
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # Unix timestamp of when the user was created in seconds.
        created_at:,
        # Indicates if the user has accepted the terms of service.
        has_accepted_terms:,
        # Indicates if the user is a guest account user.
        is_guest:,
        linked_accounts:,
        mfa_methods:,
        # Custom metadata associated with the user.
        custom_metadata: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            created_at: Float,
            has_accepted_terms: T::Boolean,
            is_guest: T::Boolean,
            linked_accounts: T::Array[Privy::LinkedAccount::Variants],
            mfa_methods: T::Array[Privy::LinkedMfaMethod::Variants],
            custom_metadata:
              T::Hash[Symbol, Privy::CustomMetadataItem::Variants]
          }
        )
      end
      def to_hash
      end
    end
  end
end
