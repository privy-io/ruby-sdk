# typed: strong

module Privy
  module Models
    # A named asset on Tron.
    module WalletTronAsset
      extend Privy::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Privy::WalletTronAsset) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      TRX = T.let(:trx, Privy::WalletTronAsset::TaggedSymbol)
      USDT = T.let(:usdt, Privy::WalletTronAsset::TaggedSymbol)
      USDC = T.let(:usdc, Privy::WalletTronAsset::TaggedSymbol)

      sig { override.returns(T::Array[Privy::WalletTronAsset::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
