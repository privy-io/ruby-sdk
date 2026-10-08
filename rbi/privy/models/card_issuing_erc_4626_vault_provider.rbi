# typed: strong

module Privy
  module Models
    # Earn provider of an ERC-4626 vault a card can spend.
    module CardIssuingErc4626VaultProvider
      extend Privy::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, Privy::CardIssuingErc4626VaultProvider) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      MORPHO =
        T.let(:morpho, Privy::CardIssuingErc4626VaultProvider::TaggedSymbol)
      AAVE = T.let(:aave, Privy::CardIssuingErc4626VaultProvider::TaggedSymbol)

      sig do
        override.returns(
          T::Array[Privy::CardIssuingErc4626VaultProvider::TaggedSymbol]
        )
      end
      def self.values
      end
    end
  end
end
