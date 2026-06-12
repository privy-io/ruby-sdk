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

      # @!attribute payment_method_category
      #
      #   @return [String, nil]
      optional :payment_method_category, String

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

      # @!attribute warning
      #
      #   @return [String, nil]
      optional :warning, String, nil?: true

      # @!method initialize(payment_method:, provider:, destination_currency_code: nil, payment_method_category: nil, source_amount: nil, source_currency_code: nil, sub_provider: nil, warning: nil)
      #   A single fiat onramp quote from a provider.
      #
      #   @param payment_method [String]
      #
      #   @param provider [Symbol, Privy::Models::FiatOnrampProvider] The fiat onramp provider to use.
      #
      #   @param destination_currency_code [String, nil]
      #
      #   @param payment_method_category [String]
      #
      #   @param source_amount [Float, nil]
      #
      #   @param source_currency_code [String, nil]
      #
      #   @param sub_provider [String, nil]
      #
      #   @param warning [String, nil]
    end
  end
end
