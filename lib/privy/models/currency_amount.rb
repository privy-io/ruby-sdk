# frozen_string_literal: true

module Privy
  module Models
    class CurrencyAmount < Privy::Internal::Type::BaseModel
      # @!attribute currency
      #   Currency code
      #
      #   @return [Symbol, Privy::Models::CurrencyAmount::Currency]
      required :currency, enum: -> { Privy::CurrencyAmount::Currency }

      # @!attribute value
      #   The monetary value as a string.
      #
      #   @return [String]
      required :value, String

      # @!method initialize(currency:, value:)
      #   A monetary value with its currency denomination.
      #
      #   @param currency [Symbol, Privy::Models::CurrencyAmount::Currency] Currency code
      #
      #   @param value [String] The monetary value as a string.

      # Currency code
      #
      # @see Privy::Models::CurrencyAmount#currency
      module Currency
        extend Privy::Internal::Type::Enum

        USD = :usd

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
