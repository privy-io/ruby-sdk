# typed: strong

module Privy
  module Models
    # A funding method for on-ramp.
    module FundingMethodEnum
      extend Privy::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Privy::FundingMethodEnum) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      MOONPAY = T.let(:moonpay, Privy::FundingMethodEnum::TaggedSymbol)
      COINBASE_ONRAMP =
        T.let(:"coinbase-onramp", Privy::FundingMethodEnum::TaggedSymbol)
      EXTERNAL = T.let(:external, Privy::FundingMethodEnum::TaggedSymbol)

      sig { override.returns(T::Array[Privy::FundingMethodEnum::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
