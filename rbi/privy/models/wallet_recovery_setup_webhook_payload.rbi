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

      # The recovery method that was set up.
      sig do
        returns(Privy::WalletRecoverySetupWebhookPayload::Method::TaggedSymbol)
      end
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
          method_: Privy::WalletRecoverySetupWebhookPayload::Method::OrSymbol,
          type: Privy::WalletRecoverySetupWebhookPayload::Type::OrSymbol,
          user_id: String,
          wallet_address: String,
          wallet_id: String
        ).returns(T.attached_class)
      end
      def self.new(
        # The recovery method that was set up.
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
            method_:
              Privy::WalletRecoverySetupWebhookPayload::Method::TaggedSymbol,
            type: Privy::WalletRecoverySetupWebhookPayload::Type::TaggedSymbol,
            user_id: String,
            wallet_address: String,
            wallet_id: String
          }
        )
      end
      def to_hash
      end

      # The recovery method that was set up.
      module Method
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::WalletRecoverySetupWebhookPayload::Method)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        USER_PASSCODE_DERIVED_RECOVERY_KEY =
          T.let(
            :user_passcode_derived_recovery_key,
            Privy::WalletRecoverySetupWebhookPayload::Method::TaggedSymbol
          )
        PRIVY_PASSCODE_DERIVED_RECOVERY_KEY =
          T.let(
            :privy_passcode_derived_recovery_key,
            Privy::WalletRecoverySetupWebhookPayload::Method::TaggedSymbol
          )
        PRIVY_GENERATED_RECOVERY_KEY =
          T.let(
            :privy_generated_recovery_key,
            Privy::WalletRecoverySetupWebhookPayload::Method::TaggedSymbol
          )
        GOOGLE_DRIVE_RECOVERY_SECRET =
          T.let(
            :google_drive_recovery_secret,
            Privy::WalletRecoverySetupWebhookPayload::Method::TaggedSymbol
          )
        ICLOUD_RECOVERY_SECRET =
          T.let(
            :icloud_recovery_secret,
            Privy::WalletRecoverySetupWebhookPayload::Method::TaggedSymbol
          )
        RECOVERY_ENCRYPTION_KEY =
          T.let(
            :recovery_encryption_key,
            Privy::WalletRecoverySetupWebhookPayload::Method::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::WalletRecoverySetupWebhookPayload::Method::TaggedSymbol
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
