# typed: strong

module Privy
  module Models
    # A named asset on Solana.
    module WalletSolanaAsset
      extend Privy::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Privy::WalletSolanaAsset) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      SOL = T.let(:sol, Privy::WalletSolanaAsset::TaggedSymbol)
      USDC = T.let(:usdc, Privy::WalletSolanaAsset::TaggedSymbol)
      EURC = T.let(:eurc, Privy::WalletSolanaAsset::TaggedSymbol)
      USDB = T.let(:usdb, Privy::WalletSolanaAsset::TaggedSymbol)

      sig { override.returns(T::Array[Privy::WalletSolanaAsset::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
