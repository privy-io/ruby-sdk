# typed: strong

module Privy
  module Models
    class WalletRecoveredWebhookPayload < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::WalletRecoveredWebhookPayload, Privy::Internal::AnyHash)
        end

      # The ID of this event, stable across repeat deliveries so clients can deduplicate
      # on it.
      sig { returns(String) }
      attr_accessor :event_id

      # The type of webhook event.
      sig { returns(Privy::WalletRecoveredWebhookPayload::Type::TaggedSymbol) }
      attr_accessor :type

      # The ID of the user.
      sig { returns(String) }
      attr_accessor :user_id

      # The address of the wallet.
      sig { returns(String) }
      attr_accessor :wallet_address

      # The ID of the wallet.
      sig { returns(String) }
      attr_accessor :wallet_id

      # Payload for the wallet.recovered webhook event.
      sig do
        params(
          event_id: String,
          type: Privy::WalletRecoveredWebhookPayload::Type::OrSymbol,
          user_id: String,
          wallet_address: String,
          wallet_id: String
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of this event, stable across repeat deliveries so clients can deduplicate
        # on it.
        event_id:,
        # The type of webhook event.
        type:,
        # The ID of the user.
        user_id:,
        # The address of the wallet.
        wallet_address:,
        # The ID of the wallet.
        wallet_id:
      )
      end

      sig do
        override.returns(
          {
            event_id: String,
            type: Privy::WalletRecoveredWebhookPayload::Type::TaggedSymbol,
            user_id: String,
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
            T.all(Symbol, Privy::WalletRecoveredWebhookPayload::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        WALLET_RECOVERED =
          T.let(
            :"wallet.recovered",
            Privy::WalletRecoveredWebhookPayload::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Privy::WalletRecoveredWebhookPayload::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
