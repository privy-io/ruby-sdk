# frozen_string_literal: true

module Privy
  module Models
    # A fiat payment rail a payout can settle over. `ach` is a standard ACH credit to
    # the destination account.
    module PayoutPaymentRail
      extend Privy::Internal::Type::Enum

      ACH = :ach
      ACH_SAME_DAY = :ach_same_day
      WIRE = :wire
      FEDNOW = :fednow
      SEPA = :sepa
      FASTER_PAYMENTS = :faster_payments
      PIX = :pix

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
