# typed: strong

module Privy
  module Models
    # Supported fiat payment rails.
    module FiatPaymentRail
      extend Privy::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Privy::FiatPaymentRail) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      SEPA = T.let(:sepa, Privy::FiatPaymentRail::TaggedSymbol)
      ACH_PUSH = T.let(:ach_push, Privy::FiatPaymentRail::TaggedSymbol)
      WIRE = T.let(:wire, Privy::FiatPaymentRail::TaggedSymbol)

      sig { override.returns(T::Array[Privy::FiatPaymentRail::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
