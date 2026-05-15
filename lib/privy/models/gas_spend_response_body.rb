# frozen_string_literal: true

module Privy
  module Models
    # @see Privy::Resources::Apps#get_gas_spend
    class GasSpendResponseBody < Privy::Internal::Type::BaseModel
      # @!attribute currency
      #   Currency for gas spend values.
      #
      #   @return [Symbol, Privy::Models::GasSpendCurrency]
      required :currency, enum: -> { Privy::GasSpendCurrency }

      # @!attribute value
      #   Total Privy credits charged as a decimal string.
      #
      #   @return [String]
      required :value, String

      # @!method initialize(currency:, value:)
      #   Aggregated Privy gas credits charged for a set of wallets over a time range.
      #
      #   @param currency [Symbol, Privy::Models::GasSpendCurrency] Currency for gas spend values.
      #
      #   @param value [String] Total Privy credits charged as a decimal string.
    end
  end
end
