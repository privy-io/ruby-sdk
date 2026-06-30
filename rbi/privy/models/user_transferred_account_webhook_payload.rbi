# typed: strong

module Privy
  module Models
    class UserTransferredAccountWebhookPayload < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::UserTransferredAccountWebhookPayload,
            Privy::Internal::AnyHash
          )
        end

      # A linked account for the user.
      sig { returns(Privy::LinkedAccount::Variants) }
      attr_accessor :account

      sig do
        returns(
          Privy::UserTransferredAccountWebhookPayload::DeletedUser::TaggedBoolean
        )
      end
      attr_accessor :deleted_user

      # A reference to a user by their unique identifier.
      sig { returns(Privy::UserReference) }
      attr_reader :from_user

      sig { params(from_user: Privy::UserReference::OrHash).void }
      attr_writer :from_user

      # A Privy user object.
      sig { returns(Privy::User) }
      attr_reader :to_user

      sig { params(to_user: Privy::User::OrHash).void }
      attr_writer :to_user

      # The type of webhook event.
      sig do
        returns(Privy::UserTransferredAccountWebhookPayload::Type::TaggedSymbol)
      end
      attr_accessor :type

      # Payload for the user.transferred_account webhook event.
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
          deleted_user:
            Privy::UserTransferredAccountWebhookPayload::DeletedUser::OrBoolean,
          from_user: Privy::UserReference::OrHash,
          to_user: Privy::User::OrHash,
          type: Privy::UserTransferredAccountWebhookPayload::Type::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # A linked account for the user.
        account:,
        deleted_user:,
        # A reference to a user by their unique identifier.
        from_user:,
        # A Privy user object.
        to_user:,
        # The type of webhook event.
        type:
      )
      end

      sig do
        override.returns(
          {
            account: Privy::LinkedAccount::Variants,
            deleted_user:
              Privy::UserTransferredAccountWebhookPayload::DeletedUser::TaggedBoolean,
            from_user: Privy::UserReference,
            to_user: Privy::User,
            type:
              Privy::UserTransferredAccountWebhookPayload::Type::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      module DeletedUser
        extend Privy::Internal::Type::Enum

        TaggedBoolean =
          T.type_alias do
            T.all(
              T::Boolean,
              Privy::UserTransferredAccountWebhookPayload::DeletedUser
            )
          end
        OrBoolean = T.type_alias { T::Boolean }

        TRUE =
          T.let(
            true,
            Privy::UserTransferredAccountWebhookPayload::DeletedUser::TaggedBoolean
          )

        sig do
          override.returns(
            T::Array[
              Privy::UserTransferredAccountWebhookPayload::DeletedUser::TaggedBoolean
            ]
          )
        end
        def self.values
        end
      end

      # The type of webhook event.
      module Type
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::UserTransferredAccountWebhookPayload::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        USER_TRANSFERRED_ACCOUNT =
          T.let(
            :"user.transferred_account",
            Privy::UserTransferredAccountWebhookPayload::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::UserTransferredAccountWebhookPayload::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
