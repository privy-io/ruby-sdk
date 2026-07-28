# frozen_string_literal: true

module Privy
  module Models
    class OnrampDepositInstructions < Privy::Internal::Type::BaseModel
      # @!attribute amount
      #
      #   @return [String]
      required :amount, String

      # @!attribute currency
      #   Supported fiat currencies.
      #
      #   @return [Symbol, Privy::Models::FiatCurrency]
      required :currency, enum: -> { Privy::FiatCurrency }

      # @!attribute payment_rail
      #   Supported fiat payment rails.
      #
      #   @return [Symbol, Privy::Models::FiatPaymentRail]
      required :payment_rail, enum: -> { Privy::FiatPaymentRail }

      # @!attribute account_holder_name
      #
      #   @return [String, nil]
      optional :account_holder_name, String

      # @!attribute bank_account_number
      #
      #   @return [String, nil]
      optional :bank_account_number, String

      # @!attribute bank_address
      #
      #   @return [String, nil]
      optional :bank_address, String

      # @!attribute bank_beneficiary_address
      #
      #   @return [String, nil]
      optional :bank_beneficiary_address, String

      # @!attribute bank_beneficiary_name
      #
      #   @return [String, nil]
      optional :bank_beneficiary_name, String

      # @!attribute bank_name
      #
      #   @return [String, nil]
      optional :bank_name, String

      # @!attribute bank_routing_number
      #
      #   @return [String, nil]
      optional :bank_routing_number, String

      # @!attribute bic
      #
      #   @return [String, nil]
      optional :bic, String

      # @!attribute deposit_message
      #
      #   @return [String, nil]
      optional :deposit_message, String

      # @!attribute iban
      #
      #   @return [String, nil]
      optional :iban, String

      # @!method initialize(amount:, currency:, payment_rail:, account_holder_name: nil, bank_account_number: nil, bank_address: nil, bank_beneficiary_address: nil, bank_beneficiary_name: nil, bank_name: nil, bank_routing_number: nil, bic: nil, deposit_message: nil, iban: nil)
      #   Bank deposit instructions for an onramp transfer.
      #
      #   @param amount [String]
      #
      #   @param currency [Symbol, Privy::Models::FiatCurrency] Supported fiat currencies.
      #
      #   @param payment_rail [Symbol, Privy::Models::FiatPaymentRail] Supported fiat payment rails.
      #
      #   @param account_holder_name [String]
      #
      #   @param bank_account_number [String]
      #
      #   @param bank_address [String]
      #
      #   @param bank_beneficiary_address [String]
      #
      #   @param bank_beneficiary_name [String]
      #
      #   @param bank_name [String]
      #
      #   @param bank_routing_number [String]
      #
      #   @param bic [String]
      #
      #   @param deposit_message [String]
      #
      #   @param iban [String]
    end
  end
end
