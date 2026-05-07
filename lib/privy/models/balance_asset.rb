# frozen_string_literal: true

module Privy
  module Models
    class BalanceAsset < Privy::Internal::Type::BaseModel
      # @!attribute amount
      #   The amount of the asset held, denominated in the unit of the asset itself, with
      #   1 decimal of precision.
      #
      #   @return [String]
      required :amount, String

      # @!attribute price
      #   A monetary value with its currency denomination.
      #
      #   @return [Privy::Models::CurrencyAmount]
      required :price, -> { Privy::CurrencyAmount }

      # @!attribute symbol
      #   The symbol of the asset (e.g. USDC, ETH).
      #
      #   @return [String]
      required :symbol, String

      # @!method initialize(amount:, price:, symbol:)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::BalanceAsset} for more details.
      #
      #   A single asset entry in a balance, representing holdings across all supported
      #   chains.
      #
      #   @param amount [String] The amount of the asset held, denominated in the unit of the asset itself, with
      #
      #   @param price [Privy::Models::CurrencyAmount] A monetary value with its currency denomination.
      #
      #   @param symbol [String] The symbol of the asset (e.g. USDC, ETH).
    end
  end
end
