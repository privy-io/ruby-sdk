# frozen_string_literal: true

module Privy
  module Models
    class PayoutDestination < Privy::Internal::Type::BaseModel
      # @!attribute fiat_account_id
      #   The ID of a previously registered external fiat account to pay out to.
      #
      #   @return [String]
      required :fiat_account_id, String

      # @!attribute payment_rail
      #   A fiat payment rail a payout can settle over. `ach` is a standard ACH credit to
      #   the destination account.
      #
      #   @return [Symbol, Privy::Models::PayoutPaymentRail, nil]
      optional :payment_rail, enum: -> { Privy::PayoutPaymentRail }

      # @!method initialize(fiat_account_id:, payment_rail: nil)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::PayoutDestination} for more details.
      #
      #   The destination bank account for a payout.
      #
      #   @param fiat_account_id [String] The ID of a previously registered external fiat account to pay out to.
      #
      #   @param payment_rail [Symbol, Privy::Models::PayoutPaymentRail] A fiat payment rail a payout can settle over. `ach` is a standard ACH credit to
    end
  end
end
