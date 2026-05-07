# frozen_string_literal: true

module Privy
  module Models
    class EarnAsset < Privy::Internal::Type::BaseModel
      # @!attribute address
      #   Token contract address.
      #
      #   @return [String]
      required :address, String

      # @!attribute decimals
      #   Number of decimals for the asset (e.g. 6 for USDC).
      #
      #   @return [Integer]
      required :decimals, Integer

      # @!attribute symbol
      #   Lowercase token symbol (e.g. "usdc").
      #
      #   @return [String]
      required :symbol, String

      # @!method initialize(address:, decimals:, symbol:)
      #   Asset metadata for an earn vault position.
      #
      #   @param address [String] Token contract address.
      #
      #   @param decimals [Integer] Number of decimals for the asset (e.g. 6 for USDC).
      #
      #   @param symbol [String] Lowercase token symbol (e.g. "usdc").
    end
  end
end
