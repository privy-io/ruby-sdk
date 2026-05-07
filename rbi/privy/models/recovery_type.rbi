# typed: strong

module Privy
  module Models
    # The type of recovery mechanism used for wallet recovery.
    module RecoveryType
      extend Privy::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Privy::RecoveryType) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      USER_PASSCODE_DERIVED_RECOVERY_KEY =
        T.let(
          :user_passcode_derived_recovery_key,
          Privy::RecoveryType::TaggedSymbol
        )
      PRIVY_PASSCODE_DERIVED_RECOVERY_KEY =
        T.let(
          :privy_passcode_derived_recovery_key,
          Privy::RecoveryType::TaggedSymbol
        )
      PRIVY_GENERATED_RECOVERY_KEY =
        T.let(:privy_generated_recovery_key, Privy::RecoveryType::TaggedSymbol)
      GOOGLE_DRIVE_RECOVERY_SECRET =
        T.let(:google_drive_recovery_secret, Privy::RecoveryType::TaggedSymbol)
      ICLOUD_RECOVERY_SECRET =
        T.let(:icloud_recovery_secret, Privy::RecoveryType::TaggedSymbol)

      sig { override.returns(T::Array[Privy::RecoveryType::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
