# typed: strong

module Privy
  module Models
    # Whether to create embedded wallets on login.
    module EmbeddedWalletCreateOnLogin
      extend Privy::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, Privy::EmbeddedWalletCreateOnLogin) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      USERS_WITHOUT_WALLETS =
        T.let(
          :"users-without-wallets",
          Privy::EmbeddedWalletCreateOnLogin::TaggedSymbol
        )
      ALL_USERS =
        T.let(:"all-users", Privy::EmbeddedWalletCreateOnLogin::TaggedSymbol)
      OFF = T.let(:off, Privy::EmbeddedWalletCreateOnLogin::TaggedSymbol)

      sig do
        override.returns(
          T::Array[Privy::EmbeddedWalletCreateOnLogin::TaggedSymbol]
        )
      end
      def self.values
      end
    end
  end
end
