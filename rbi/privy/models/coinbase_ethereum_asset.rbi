# typed: strong

module Privy
  module Models
    # An Ethereum asset supported by Coinbase on-ramp.
    module CoinbaseEthereumAsset
      extend Privy::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, Privy::CoinbaseEthereumAsset) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      ETH = T.let(:eth, Privy::CoinbaseEthereumAsset::TaggedSymbol)
      ETH_2 = T.let(:ETH, Privy::CoinbaseEthereumAsset::TaggedSymbol)
      USDC = T.let(:USDC, Privy::CoinbaseEthereumAsset::TaggedSymbol)
      POL = T.let(:POL, Privy::CoinbaseEthereumAsset::TaggedSymbol)
      MON = T.let(:MON, Privy::CoinbaseEthereumAsset::TaggedSymbol)

      sig do
        override.returns(T::Array[Privy::CoinbaseEthereumAsset::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end
