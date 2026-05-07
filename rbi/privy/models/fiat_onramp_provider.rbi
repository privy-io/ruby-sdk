# typed: strong

module Privy
  module Models
    # The fiat onramp provider to use.
    module FiatOnrampProvider
      extend Privy::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Privy::FiatOnrampProvider) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      MELD = T.let(:meld, Privy::FiatOnrampProvider::TaggedSymbol)
      MELD_SANDBOX =
        T.let(:"meld-sandbox", Privy::FiatOnrampProvider::TaggedSymbol)
      MOONPAY = T.let(:moonpay, Privy::FiatOnrampProvider::TaggedSymbol)
      MOONPAY_SANDBOX =
        T.let(:"moonpay-sandbox", Privy::FiatOnrampProvider::TaggedSymbol)
      COINBASE = T.let(:coinbase, Privy::FiatOnrampProvider::TaggedSymbol)
      COINBASE_SANDBOX =
        T.let(:"coinbase-sandbox", Privy::FiatOnrampProvider::TaggedSymbol)

      sig do
        override.returns(T::Array[Privy::FiatOnrampProvider::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end
