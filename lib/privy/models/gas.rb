# frozen_string_literal: true

module Privy
  module Models
    class Gas < Privy::Internal::Type::BaseModel
      # @!attribute amount
      #   Gas cost in the gas token as a human-readable decimal string (e.g. "0.0001").
      #
      #   @return [String]
      required :amount, String

      # @!attribute base_amount
      #   Gas cost in the gas token's base units (e.g. wei).
      #
      #   @return [String]
      required :base_amount, String

      # @!attribute gas_asset
      #   Gas token symbol (e.g. "ETH", "USDC").
      #
      #   @return [String]
      required :gas_asset, String

      # @!method initialize(amount:, base_amount:, gas_asset:)
      #   Gas cost for a blockchain action. Includes both raw base-unit amount and a
      #   human-readable decimal string, plus the gas token symbol.
      #
      #   @param amount [String] Gas cost in the gas token as a human-readable decimal string (e.g. "0.0001").
      #
      #   @param base_amount [String] Gas cost in the gas token's base units (e.g. wei).
      #
      #   @param gas_asset [String] Gas token symbol (e.g. "ETH", "USDC").
    end
  end
end
