# frozen_string_literal: true

module Privy
  module Models
    class MoonpayFiatOnRampSolanaConfig < Privy::Internal::Type::BaseModel
      # @!attribute currency_code
      #   A Moonpay currency code for a Solana asset.
      #
      #   @return [Symbol, Privy::Models::MoonpaySolanaCurrencyCode, nil]
      optional :currency_code, enum: -> { Privy::MoonpaySolanaCurrencyCode }, api_name: :currencyCode

      # @!attribute email
      #
      #   @return [String, nil]
      optional :email, String

      # @!attribute payment_method
      #   A payment method supported by Moonpay on-ramp.
      #
      #   @return [Symbol, Privy::Models::MoonpayPaymentMethod, nil]
      optional :payment_method, enum: -> { Privy::MoonpayPaymentMethod }, api_name: :paymentMethod

      # @!attribute quote_currency_amount
      #
      #   @return [Float, nil]
      optional :quote_currency_amount, Float, api_name: :quoteCurrencyAmount

      # @!attribute ui_config
      #   UI configuration for the Moonpay on-ramp widget.
      #
      #   @return [Privy::Models::MoonpayUiConfig, nil]
      optional :ui_config, -> { Privy::MoonpayUiConfig }, api_name: :uiConfig

      # @!method initialize(currency_code: nil, email: nil, payment_method: nil, quote_currency_amount: nil, ui_config: nil)
      #   Configuration for a Moonpay fiat on-ramp for Solana.
      #
      #   @param currency_code [Symbol, Privy::Models::MoonpaySolanaCurrencyCode] A Moonpay currency code for a Solana asset.
      #
      #   @param email [String]
      #
      #   @param payment_method [Symbol, Privy::Models::MoonpayPaymentMethod] A payment method supported by Moonpay on-ramp.
      #
      #   @param quote_currency_amount [Float]
      #
      #   @param ui_config [Privy::Models::MoonpayUiConfig] UI configuration for the Moonpay on-ramp widget.
    end
  end
end
