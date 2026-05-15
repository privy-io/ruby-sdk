# typed: strong

module Privy
  module Models
    class UserAuthenticatedWebhookPayload < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::UserAuthenticatedWebhookPayload,
            Privy::Internal::AnyHash
          )
        end

      # A linked account for the user.
      sig { returns(Privy::LinkedAccount::Variants) }
      attr_accessor :account

      # The type of webhook event.
      sig do
        returns(Privy::UserAuthenticatedWebhookPayload::Type::TaggedSymbol)
      end
      attr_accessor :type

      # A Privy user object.
      sig { returns(Privy::User) }
      attr_reader :user

      sig { params(user: Privy::User::OrHash).void }
      attr_writer :user

      # Payload for the user.authenticated webhook event.
      sig do
        params(
          account:
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
            ),
          type: Privy::UserAuthenticatedWebhookPayload::Type::OrSymbol,
          user: Privy::User::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # A linked account for the user.
        account:,
        # The type of webhook event.
        type:,
        # A Privy user object.
        user:
      )
      end

      sig do
        override.returns(
          {
            account: Privy::LinkedAccount::Variants,
            type: Privy::UserAuthenticatedWebhookPayload::Type::TaggedSymbol,
            user: Privy::User
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
            T.all(Symbol, Privy::UserAuthenticatedWebhookPayload::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        USER_AUTHENTICATED =
          T.let(
            :"user.authenticated",
            Privy::UserAuthenticatedWebhookPayload::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Privy::UserAuthenticatedWebhookPayload::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
