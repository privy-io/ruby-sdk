# typed: strong

module Privy
  module Models
    class PayoutDestination < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::PayoutDestination, Privy::Internal::AnyHash)
        end

      # The ID of a previously registered external fiat account to pay out to.
      sig { returns(String) }
      attr_accessor :fiat_account_id

      # A fiat payment rail a payout can settle over. `ach` is a standard ACH credit to
      # the destination account.
      sig { returns(T.nilable(Privy::PayoutPaymentRail::OrSymbol)) }
      attr_reader :payment_rail

      sig { params(payment_rail: Privy::PayoutPaymentRail::OrSymbol).void }
      attr_writer :payment_rail

      # The destination bank account for a payout.
      sig do
        params(
          fiat_account_id: String,
          payment_rail: Privy::PayoutPaymentRail::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of a previously registered external fiat account to pay out to.
        fiat_account_id:,
        # A fiat payment rail a payout can settle over. `ach` is a standard ACH credit to
        # the destination account.
        payment_rail: nil
      )
      end

      sig do
        override.returns(
          {
            fiat_account_id: String,
            payment_rail: Privy::PayoutPaymentRail::OrSymbol
          }
        )
      end
      def to_hash
      end
    end
  end
end
