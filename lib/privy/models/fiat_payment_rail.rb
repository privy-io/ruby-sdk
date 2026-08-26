# frozen_string_literal: true

module Privy
  module Models
    # Supported fiat payment rails.
    module FiatPaymentRail
      extend Privy::Internal::Type::Enum

      SEPA = :sepa
      ACH_PUSH = :ach_push
      WIRE = :wire
      FEDNOW = :fednow
      FASTER_PAYMENTS = :faster_payments

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
