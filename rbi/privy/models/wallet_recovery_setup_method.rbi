# typed: strong

module Privy
  module Models
    # Recovery method types for embedded wallet recovery setup webhooks.
    module WalletRecoverySetupMethod
      extend Privy::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, Privy::WalletRecoverySetupMethod) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      USER_PASSCODE_DERIVED_RECOVERY_KEY =
        T.let(
          :user_passcode_derived_recovery_key,
          Privy::WalletRecoverySetupMethod::TaggedSymbol
        )
      PRIVY_PASSCODE_DERIVED_RECOVERY_KEY =
        T.let(
          :privy_passcode_derived_recovery_key,
          Privy::WalletRecoverySetupMethod::TaggedSymbol
        )
      PRIVY_GENERATED_RECOVERY_KEY =
        T.let(
          :privy_generated_recovery_key,
          Privy::WalletRecoverySetupMethod::TaggedSymbol
        )
      GOOGLE_DRIVE_RECOVERY_SECRET =
        T.let(
          :google_drive_recovery_secret,
          Privy::WalletRecoverySetupMethod::TaggedSymbol
        )
      ICLOUD_RECOVERY_SECRET =
        T.let(
          :icloud_recovery_secret,
          Privy::WalletRecoverySetupMethod::TaggedSymbol
        )
      RECOVERY_ENCRYPTION_KEY =
        T.let(
          :recovery_encryption_key,
          Privy::WalletRecoverySetupMethod::TaggedSymbol
        )

      sig do
        override.returns(
          T::Array[Privy::WalletRecoverySetupMethod::TaggedSymbol]
        )
      end
      def self.values
      end
    end
  end
end
