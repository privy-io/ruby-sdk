# typed: strong

module Privy
  module Models
    # A user-owned recovery option for embedded wallets.
    module UserOwnedRecoveryOption
      extend Privy::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, Privy::UserOwnedRecoveryOption) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      USER_PASSCODE =
        T.let(:"user-passcode", Privy::UserOwnedRecoveryOption::TaggedSymbol)
      GOOGLE_DRIVE =
        T.let(:"google-drive", Privy::UserOwnedRecoveryOption::TaggedSymbol)
      ICLOUD = T.let(:icloud, Privy::UserOwnedRecoveryOption::TaggedSymbol)

      sig do
        override.returns(T::Array[Privy::UserOwnedRecoveryOption::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end
