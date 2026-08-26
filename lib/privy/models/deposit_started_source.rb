# frozen_string_literal: true

module Privy
  module Models
    class DepositStartedSource < Privy::Internal::Type::BaseModel
      # @!attribute amount
      #   The fiat amount deposited.
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
      #   @return [Symbol, Privy::Models::FiatPaymentRail, nil]
      optional :payment_rail, enum: -> { Privy::FiatPaymentRail }

      # @!attribute sender_name
      #
      #   @return [String, nil]
      optional :sender_name, String

      # @!method initialize(amount:, currency:, payment_rail: nil, sender_name: nil)
      #   The fiat deposit that was received, including amount, currency, and originator.
      #
      #   @param amount [String] The fiat amount deposited.
      #
      #   @param currency [Symbol, Privy::Models::FiatCurrency] Supported fiat currencies.
      #
      #   @param payment_rail [Symbol, Privy::Models::FiatPaymentRail] Supported fiat payment rails.
      #
      #   @param sender_name [String]
    end
  end
end
