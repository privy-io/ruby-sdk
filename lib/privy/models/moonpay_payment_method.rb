# frozen_string_literal: true

module Privy
  module Models
    # A payment method supported by Moonpay on-ramp.
    module MoonpayPaymentMethod
      extend Privy::Internal::Type::Enum

      ACH_BANK_TRANSFER = :ach_bank_transfer
      CREDIT_DEBIT_CARD = :credit_debit_card
      GBP_BANK_TRANSFER = :gbp_bank_transfer
      GBP_OPEN_BANKING_PAYMENT = :gbp_open_banking_payment
      MOBILE_WALLET = :mobile_wallet
      SEPA_BANK_TRANSFER = :sepa_bank_transfer
      SEPA_OPEN_BANKING_PAYMENT = :sepa_open_banking_payment
      PIX_INSTANT_PAYMENT = :pix_instant_payment
      YELLOW_CARD_BANK_TRANSFER = :yellow_card_bank_transfer

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
