# typed: strong

module Privy
  module Models
    # Currency for gas spend values.
    module GasSpendCurrency
      extend Privy::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Privy::GasSpendCurrency) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      USD = T.let(:usd, Privy::GasSpendCurrency::TaggedSymbol)

      sig { override.returns(T::Array[Privy::GasSpendCurrency::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
