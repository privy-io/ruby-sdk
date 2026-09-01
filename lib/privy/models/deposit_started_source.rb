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
      #   Fiat currencies a deposit account can receive deposits in.
      #
      #   @return [Symbol, Privy::Models::FiatDepositCurrency]
      required :currency, enum: -> { Privy::FiatDepositCurrency }

      # @!attribute payment_rail
      #   The payment rail the deposit arrived on. Known values include "sepa",
      #   "ach_push", "wire", "fednow", "faster_payments", "pix", "spei", but the provider
      #   may return others.
      #
      #   @return [String, nil]
      optional :payment_rail, String

      # @!attribute sender_name
      #
      #   @return [String, nil]
      optional :sender_name, String

      # @!method initialize(amount:, currency:, payment_rail: nil, sender_name: nil)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::DepositStartedSource} for more details.
      #
      #   The fiat deposit that was received, including amount, currency, and originator.
      #
      #   @param amount [String] The fiat amount deposited.
      #
      #   @param currency [Symbol, Privy::Models::FiatDepositCurrency] Fiat currencies a deposit account can receive deposits in.
      #
      #   @param payment_rail [String] The payment rail the deposit arrived on. Known values include "sepa", "ach_push"
      #
      #   @param sender_name [String]
    end
  end
end
