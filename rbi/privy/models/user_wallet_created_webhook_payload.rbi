# typed: strong

module Privy
  module Models
    class UserWalletCreatedWebhookPayload < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::UserWalletCreatedWebhookPayload,
            Privy::Internal::AnyHash
          )
        end

      # The type of webhook event.
      sig do
        returns(Privy::UserWalletCreatedWebhookPayload::Type::TaggedSymbol)
      end
      attr_accessor :type

      # A Privy user object.
      sig { returns(Privy::User) }
      attr_reader :user

      sig { params(user: Privy::User::OrHash).void }
      attr_writer :user

      # Base schema for wallet accounts linked to the user.
      sig { returns(Privy::LinkedAccountBaseWallet) }
      attr_reader :wallet

      sig { params(wallet: Privy::LinkedAccountBaseWallet::OrHash).void }
      attr_writer :wallet

      # Payload for the user.wallet_created webhook event.
      sig do
        params(
          type: Privy::UserWalletCreatedWebhookPayload::Type::OrSymbol,
          user: Privy::User::OrHash,
          wallet: Privy::LinkedAccountBaseWallet::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The type of webhook event.
        type:,
        # A Privy user object.
        user:,
        # Base schema for wallet accounts linked to the user.
        wallet:
      )
      end

      sig do
        override.returns(
          {
            type: Privy::UserWalletCreatedWebhookPayload::Type::TaggedSymbol,
            user: Privy::User,
            wallet: Privy::LinkedAccountBaseWallet
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
            T.all(Symbol, Privy::UserWalletCreatedWebhookPayload::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        USER_WALLET_CREATED =
          T.let(
            :"user.wallet_created",
            Privy::UserWalletCreatedWebhookPayload::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Privy::UserWalletCreatedWebhookPayload::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
