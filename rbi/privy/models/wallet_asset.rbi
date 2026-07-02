# typed: strong

module Privy
  module Models
    # A named asset supported across all chains.
    module WalletAsset
      extend Privy::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Privy::WalletAsset) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      USDC = T.let(:usdc, Privy::WalletAsset::TaggedSymbol)
      USDC_E = T.let(:"usdc.e", Privy::WalletAsset::TaggedSymbol)
      ETH = T.let(:eth, Privy::WalletAsset::TaggedSymbol)
      AVAX = T.let(:avax, Privy::WalletAsset::TaggedSymbol)
      POL = T.let(:pol, Privy::WalletAsset::TaggedSymbol)
      BNB = T.let(:bnb, Privy::WalletAsset::TaggedSymbol)
      USDT = T.let(:usdt, Privy::WalletAsset::TaggedSymbol)
      EURC = T.let(:eurc, Privy::WalletAsset::TaggedSymbol)
      USDB = T.let(:usdb, Privy::WalletAsset::TaggedSymbol)
      SOL = T.let(:sol, Privy::WalletAsset::TaggedSymbol)
      TRX = T.let(:trx, Privy::WalletAsset::TaggedSymbol)

      sig { override.returns(T::Array[Privy::WalletAsset::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
