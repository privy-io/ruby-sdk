# typed: strong

module Privy
  module Models
    # The derivation strategy used for Solana wallets.
    module SolanaWalletDerivationStrategy
      extend Privy::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, Privy::SolanaWalletDerivationStrategy) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      ENTROPY_TO_SEED =
        T.let(
          :ENTROPY_TO_SEED,
          Privy::SolanaWalletDerivationStrategy::TaggedSymbol
        )
      ENTROPY_TO_MNEMONIC_TO_SEED =
        T.let(
          :ENTROPY_TO_MNEMONIC_TO_SEED,
          Privy::SolanaWalletDerivationStrategy::TaggedSymbol
        )

      sig do
        override.returns(
          T::Array[Privy::SolanaWalletDerivationStrategy::TaggedSymbol]
        )
      end
      def self.values
      end
    end
  end
end
