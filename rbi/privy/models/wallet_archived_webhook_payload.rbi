# typed: strong

module Privy
  module Models
    class WalletArchivedWebhookPayload < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::WalletArchivedWebhookPayload, Privy::Internal::AnyHash)
        end

      # Unix timestamp of when the wallet was archived.
      sig { returns(Float) }
      attr_accessor :archived_at

      # The chain type of the archived wallet.
      sig { returns(String) }
      attr_accessor :chain_type

      # The type of webhook event.
      sig { returns(Privy::WalletArchivedWebhookPayload::Type::TaggedSymbol) }
      attr_accessor :type

      # The address of the archived wallet.
      sig { returns(String) }
      attr_accessor :wallet_address

      # The ID of the archived wallet.
      sig { returns(String) }
      attr_accessor :wallet_id

      # Payload for the wallet.archived webhook event.
      sig do
        params(
          archived_at: Float,
          chain_type: String,
          type: Privy::WalletArchivedWebhookPayload::Type::OrSymbol,
          wallet_address: String,
          wallet_id: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Unix timestamp of when the wallet was archived.
        archived_at:,
        # The chain type of the archived wallet.
        chain_type:,
        # The type of webhook event.
        type:,
        # The address of the archived wallet.
        wallet_address:,
        # The ID of the archived wallet.
        wallet_id:
      )
      end

      sig do
        override.returns(
          {
            archived_at: Float,
            chain_type: String,
            type: Privy::WalletArchivedWebhookPayload::Type::TaggedSymbol,
            wallet_address: String,
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
            T.all(Symbol, Privy::WalletArchivedWebhookPayload::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        WALLET_ARCHIVED =
          T.let(
            :"wallet.archived",
            Privy::WalletArchivedWebhookPayload::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Privy::WalletArchivedWebhookPayload::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
