# typed: strong

module Privy
  module Models
    # Fiat currencies a deposit account can receive deposits in.
    module FiatDepositCurrency
      extend Privy::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Privy::FiatDepositCurrency) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      USD = T.let(:usd, Privy::FiatDepositCurrency::TaggedSymbol)
      EUR = T.let(:eur, Privy::FiatDepositCurrency::TaggedSymbol)
      GBP = T.let(:gbp, Privy::FiatDepositCurrency::TaggedSymbol)
      BRL = T.let(:brl, Privy::FiatDepositCurrency::TaggedSymbol)
      MXN = T.let(:mxn, Privy::FiatDepositCurrency::TaggedSymbol)
      COP = T.let(:cop, Privy::FiatDepositCurrency::TaggedSymbol)

      sig do
        override.returns(T::Array[Privy::FiatDepositCurrency::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end
