# frozen_string_literal: true

module Privy
  module Models
    class FiatOnrampQuote < Privy::Internal::Type::BaseModel
      # @!attribute payment_method
      #
      #   @return [String]
      required :payment_method, String

      # @!attribute provider
      #   The fiat onramp provider to use.
      #
      #   @return [Symbol, Privy::Models::FiatOnrampProvider]
      required :provider, enum: -> { Privy::FiatOnrampProvider }

      # @!attribute destination_currency_code
      #
      #   @return [String, nil]
      optional :destination_currency_code, String, nil?: true

      # @!attribute source_amount
      #
      #   @return [Float, nil]
      optional :source_amount, Float, nil?: true

      # @!attribute source_currency_code
      #
      #   @return [String, nil]
      optional :source_currency_code, String, nil?: true

      # @!attribute sub_provider
      #
      #   @return [String, nil]
      optional :sub_provider, String, nil?: true

      # @!method initialize(payment_method:, provider:, destination_currency_code: nil, source_amount: nil, source_currency_code: nil, sub_provider: nil)
      #   A single fiat onramp quote from a provider.
      #
      #   @param payment_method [String]
      #
      #   @param provider [Symbol, Privy::Models::FiatOnrampProvider] The fiat onramp provider to use.
      #
      #   @param destination_currency_code [String, nil]
      #
      #   @param source_amount [Float, nil]
      #
      #   @param source_currency_code [String, nil]
      #
      #   @param sub_provider [String, nil]
    end
  end
end
