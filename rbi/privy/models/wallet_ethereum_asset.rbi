# typed: strong

module Privy
  module Models
    # A named asset on Ethereum-compatible chains.
    module WalletEthereumAsset
      extend Privy::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Privy::WalletEthereumAsset) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      USDC = T.let(:usdc, Privy::WalletEthereumAsset::TaggedSymbol)
      USDC_E = T.let(:"usdc.e", Privy::WalletEthereumAsset::TaggedSymbol)
      ETH = T.let(:eth, Privy::WalletEthereumAsset::TaggedSymbol)
      AVAX = T.let(:avax, Privy::WalletEthereumAsset::TaggedSymbol)
      POL = T.let(:pol, Privy::WalletEthereumAsset::TaggedSymbol)
      BNB = T.let(:bnb, Privy::WalletEthereumAsset::TaggedSymbol)
      USDT = T.let(:usdt, Privy::WalletEthereumAsset::TaggedSymbol)
      EURC = T.let(:eurc, Privy::WalletEthereumAsset::TaggedSymbol)
      USDB = T.let(:usdb, Privy::WalletEthereumAsset::TaggedSymbol)

      sig do
        override.returns(T::Array[Privy::WalletEthereumAsset::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end
