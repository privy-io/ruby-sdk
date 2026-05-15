# typed: strong

module Privy
  module Models
    # A currency asset type.
    module CurrencyAsset
      extend Privy::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Privy::CurrencyAsset) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      NATIVE_CURRENCY =
        T.let(:"native-currency", Privy::CurrencyAsset::TaggedSymbol)
      USDC = T.let(:USDC, Privy::CurrencyAsset::TaggedSymbol)

      sig { override.returns(T::Array[Privy::CurrencyAsset::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
