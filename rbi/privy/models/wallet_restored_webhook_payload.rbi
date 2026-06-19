# typed: strong

module Privy
  module Models
    class WalletRestoredWebhookPayload < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::WalletRestoredWebhookPayload, Privy::Internal::AnyHash)
        end

      # The chain type of the restored wallet.
      sig { returns(String) }
      attr_accessor :chain_type

      # The type of webhook event.
      sig { returns(Privy::WalletRestoredWebhookPayload::Type::TaggedSymbol) }
      attr_accessor :type

      # The address of the restored wallet.
      sig { returns(String) }
      attr_accessor :wallet_address

      # The ID of the restored wallet.
      sig { returns(String) }
      attr_accessor :wallet_id

      # Payload for the wallet.restored webhook event.
      sig do
        params(
          chain_type: String,
          type: Privy::WalletRestoredWebhookPayload::Type::OrSymbol,
          wallet_address: String,
          wallet_id: String
        ).returns(T.attached_class)
      end
      def self.new(
        # The chain type of the restored wallet.
        chain_type:,
        # The type of webhook event.
        type:,
        # The address of the restored wallet.
        wallet_address:,
        # The ID of the restored wallet.
        wallet_id:
      )
      end

      sig do
        override.returns(
          {
            chain_type: String,
            type: Privy::WalletRestoredWebhookPayload::Type::TaggedSymbol,
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
            T.all(Symbol, Privy::WalletRestoredWebhookPayload::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        WALLET_RESTORED =
          T.let(
            :"wallet.restored",
            Privy::WalletRestoredWebhookPayload::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Privy::WalletRestoredWebhookPayload::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
