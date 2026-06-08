# typed: strong

module Privy
  module Models
    # Supported source fiat currencies for virtual account deposits.
    module BridgeSourceAsset
      extend Privy::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Privy::BridgeSourceAsset) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      USD = T.let(:usd, Privy::BridgeSourceAsset::TaggedSymbol)
      EUR = T.let(:eur, Privy::BridgeSourceAsset::TaggedSymbol)
      MXN = T.let(:mxn, Privy::BridgeSourceAsset::TaggedSymbol)
      BRL = T.let(:brl, Privy::BridgeSourceAsset::TaggedSymbol)
      GBP = T.let(:gbp, Privy::BridgeSourceAsset::TaggedSymbol)

      sig { override.returns(T::Array[Privy::BridgeSourceAsset::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
