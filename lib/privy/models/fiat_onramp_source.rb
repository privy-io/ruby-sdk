# frozen_string_literal: true

module Privy
  module Models
    class FiatOnrampSource < Privy::Internal::Type::BaseModel
      # @!attribute amount
      #   A positive decimal amount as a string (e.g. "100", "50.25", "0.001").
      #
      #   @return [String]
      required :amount, String

      # @!attribute asset
      #   ISO 4217 fiat currency code. Three uppercase ASCII letters.
      #
      #   @return [String]
      required :asset, String

      # @!method initialize(amount:, asset:)
      #   Source currency details for a fiat onramp quote request.
      #
      #   @param amount [String] A positive decimal amount as a string (e.g. "100", "50.25", "0.001").
      #
      #   @param asset [String] ISO 4217 fiat currency code. Three uppercase ASCII letters.
    end
  end
end
