# typed: strong

module Privy
  module Models
    class TmmfWalletUpdatedWebhookPayload < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::TmmfWalletUpdatedWebhookPayload,
            Privy::Internal::AnyHash
          )
        end

      # Blockchain address of the registered wallet.
      sig { returns(String) }
      attr_accessor :address

      # Chain the fund is held on, e.g. "ethereum_sepolia".
      sig { returns(String) }
      attr_accessor :chain

      # Unix timestamp in milliseconds when the wallet registration was created.
      sig { returns(Integer) }
      attr_accessor :created_at

      # The fund provider.
      sig { returns(Privy::Wallets::TmmfProvider::Variants) }
      attr_accessor :provider

      # A registered wallet's status with its tMMF provider, read live from the
      # provider.
      sig do
        returns(T.nilable(Privy::Wallets::TmmfProviderWalletStatus::Variants))
      end
      attr_accessor :status

      # The type of webhook event.
      sig do
        returns(Privy::TmmfWalletUpdatedWebhookPayload::Type::TaggedSymbol)
      end
      attr_accessor :type

      # Unix timestamp in milliseconds when the wallet registration was last updated.
      sig { returns(Integer) }
      attr_accessor :updated_at

      # ID of the Privy user the wallet is registered for.
      sig { returns(String) }
      attr_accessor :user_id

      # ID of the Privy wallet registered to trade and hold fund shares.
      sig { returns(String) }
      attr_accessor :wallet_id

      # Payload for the tmmf.wallet.updated webhook event: a register request created or
      # confirmed a tMMF wallet.
      sig do
        params(
          address: String,
          chain: String,
          created_at: Integer,
          provider: T.any(Privy::Wallets::TmmfProvider::OrSymbol, String),
          status:
            T.nilable(
              T.any(Privy::Wallets::TmmfProviderWalletStatus::OrSymbol, String)
            ),
          type: Privy::TmmfWalletUpdatedWebhookPayload::Type::OrSymbol,
          updated_at: Integer,
          user_id: String,
          wallet_id: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Blockchain address of the registered wallet.
        address:,
        # Chain the fund is held on, e.g. "ethereum_sepolia".
        chain:,
        # Unix timestamp in milliseconds when the wallet registration was created.
        created_at:,
        # The fund provider.
        provider:,
        # A registered wallet's status with its tMMF provider, read live from the
        # provider.
        status:,
        # The type of webhook event.
        type:,
        # Unix timestamp in milliseconds when the wallet registration was last updated.
        updated_at:,
        # ID of the Privy user the wallet is registered for.
        user_id:,
        # ID of the Privy wallet registered to trade and hold fund shares.
        wallet_id:
      )
      end

      sig do
        override.returns(
          {
            address: String,
            chain: String,
            created_at: Integer,
            provider: Privy::Wallets::TmmfProvider::Variants,
            status:
              T.nilable(Privy::Wallets::TmmfProviderWalletStatus::Variants),
            type: Privy::TmmfWalletUpdatedWebhookPayload::Type::TaggedSymbol,
            updated_at: Integer,
            user_id: String,
            wallet_id: String
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
            T.all(Symbol, Privy::TmmfWalletUpdatedWebhookPayload::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TMMF_WALLET_UPDATED =
          T.let(
            :"tmmf.wallet.updated",
            Privy::TmmfWalletUpdatedWebhookPayload::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Privy::TmmfWalletUpdatedWebhookPayload::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
