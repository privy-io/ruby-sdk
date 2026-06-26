# typed: strong

module Privy
  module Models
    class WalletRecoverySetupWebhookPayload < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::WalletRecoverySetupWebhookPayload,
            Privy::Internal::AnyHash
          )
        end

      # Recovery method types for embedded wallet recovery setup webhooks.
      sig { returns(Privy::WalletRecoverySetupMethod::TaggedSymbol) }
      attr_accessor :method_

      # The type of webhook event.
      sig do
        returns(Privy::WalletRecoverySetupWebhookPayload::Type::TaggedSymbol)
      end
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

      # Payload for the wallet.recovery_setup webhook event.
      sig do
        params(
          method_: Privy::WalletRecoverySetupMethod::OrSymbol,
          type: Privy::WalletRecoverySetupWebhookPayload::Type::OrSymbol,
          user_id: String,
          wallet_address: String,
          wallet_id: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Recovery method types for embedded wallet recovery setup webhooks.
        method_:,
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
            method_: Privy::WalletRecoverySetupMethod::TaggedSymbol,
            type: Privy::WalletRecoverySetupWebhookPayload::Type::TaggedSymbol,
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
            T.all(Symbol, Privy::WalletRecoverySetupWebhookPayload::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        WALLET_RECOVERY_SETUP =
          T.let(
            :"wallet.recovery_setup",
            Privy::WalletRecoverySetupWebhookPayload::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::WalletRecoverySetupWebhookPayload::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
