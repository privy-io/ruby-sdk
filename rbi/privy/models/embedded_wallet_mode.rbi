# typed: strong

module Privy
  module Models
    # The mode for embedded wallets.
    module EmbeddedWalletMode
      extend Privy::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Privy::EmbeddedWalletMode) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      LEGACY_EMBEDDED_WALLETS_ONLY =
        T.let(
          :"legacy-embedded-wallets-only",
          Privy::EmbeddedWalletMode::TaggedSymbol
        )
      USER_CONTROLLED_SERVER_WALLETS_ONLY =
        T.let(
          :"user-controlled-server-wallets-only",
          Privy::EmbeddedWalletMode::TaggedSymbol
        )

      sig do
        override.returns(T::Array[Privy::EmbeddedWalletMode::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end
