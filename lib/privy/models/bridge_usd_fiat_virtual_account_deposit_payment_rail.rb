# frozen_string_literal: true

module Privy
  module Models
    # Payment rails supported for USD virtual account deposits.
    module BridgeUsdFiatVirtualAccountDepositPaymentRail
      extend Privy::Internal::Type::Enum

      ACH_PUSH = :ach_push
      WIRE = :wire

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
