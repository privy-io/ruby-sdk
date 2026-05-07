# typed: strong

module Privy
  module Models
    # The method used to recover an embedded wallet account.
    module EmbeddedWalletRecoveryMethod
      extend Privy::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, Privy::EmbeddedWalletRecoveryMethod) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      PRIVY = T.let(:privy, Privy::EmbeddedWalletRecoveryMethod::TaggedSymbol)
      USER_PASSCODE =
        T.let(
          :"user-passcode",
          Privy::EmbeddedWalletRecoveryMethod::TaggedSymbol
        )
      GOOGLE_DRIVE =
        T.let(
          :"google-drive",
          Privy::EmbeddedWalletRecoveryMethod::TaggedSymbol
        )
      ICLOUD = T.let(:icloud, Privy::EmbeddedWalletRecoveryMethod::TaggedSymbol)
      RECOVERY_ENCRYPTION_KEY =
        T.let(
          :"recovery-encryption-key",
          Privy::EmbeddedWalletRecoveryMethod::TaggedSymbol
        )
      PRIVY_V2 =
        T.let(:"privy-v2", Privy::EmbeddedWalletRecoveryMethod::TaggedSymbol)

      sig do
        override.returns(
          T::Array[Privy::EmbeddedWalletRecoveryMethod::TaggedSymbol]
        )
      end
      def self.values
      end
    end
  end
end
