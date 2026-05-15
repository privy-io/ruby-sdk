# typed: strong

module Privy
  module Models
    module BridgeDestinationAsset
      extend Privy::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, Privy::BridgeDestinationAsset) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      USDB = T.let(:usdb, Privy::BridgeDestinationAsset::TaggedSymbol)
      USDC = T.let(:usdc, Privy::BridgeDestinationAsset::TaggedSymbol)
      USDT = T.let(:usdt, Privy::BridgeDestinationAsset::TaggedSymbol)
      DAI = T.let(:dai, Privy::BridgeDestinationAsset::TaggedSymbol)
      PYUSD = T.let(:pyusd, Privy::BridgeDestinationAsset::TaggedSymbol)
      EURC = T.let(:eurc, Privy::BridgeDestinationAsset::TaggedSymbol)

      sig do
        override.returns(T::Array[Privy::BridgeDestinationAsset::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end
