# typed: strong

module Privy
  module Models
    # A Solana asset supported by Coinbase on-ramp.
    module CoinbaseSolanaAsset
      extend Privy::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Privy::CoinbaseSolanaAsset) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      SOL = T.let(:SOL, Privy::CoinbaseSolanaAsset::TaggedSymbol)
      USDC = T.let(:USDC, Privy::CoinbaseSolanaAsset::TaggedSymbol)

      sig do
        override.returns(T::Array[Privy::CoinbaseSolanaAsset::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end
