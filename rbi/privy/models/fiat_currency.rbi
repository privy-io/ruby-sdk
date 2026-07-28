# typed: strong

module Privy
  module Models
    # Supported fiat currencies.
    module FiatCurrency
      extend Privy::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Privy::FiatCurrency) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      USD = T.let(:usd, Privy::FiatCurrency::TaggedSymbol)
      EUR = T.let(:eur, Privy::FiatCurrency::TaggedSymbol)

      sig { override.returns(T::Array[Privy::FiatCurrency::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
