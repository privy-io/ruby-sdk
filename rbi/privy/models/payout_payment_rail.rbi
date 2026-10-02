# typed: strong

module Privy
  module Models
    # A fiat payment rail a payout can settle over. `ach` is a standard ACH credit to
    # the destination account.
    module PayoutPaymentRail
      extend Privy::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Privy::PayoutPaymentRail) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      ACH = T.let(:ach, Privy::PayoutPaymentRail::TaggedSymbol)
      ACH_SAME_DAY =
        T.let(:ach_same_day, Privy::PayoutPaymentRail::TaggedSymbol)
      WIRE = T.let(:wire, Privy::PayoutPaymentRail::TaggedSymbol)
      FEDNOW = T.let(:fednow, Privy::PayoutPaymentRail::TaggedSymbol)
      SEPA = T.let(:sepa, Privy::PayoutPaymentRail::TaggedSymbol)
      FASTER_PAYMENTS =
        T.let(:faster_payments, Privy::PayoutPaymentRail::TaggedSymbol)
      PIX = T.let(:pix, Privy::PayoutPaymentRail::TaggedSymbol)

      sig { override.returns(T::Array[Privy::PayoutPaymentRail::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
