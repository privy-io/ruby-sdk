# frozen_string_literal: true

module Privy
  module Models
    class BalanceAssetByChain < Privy::Internal::Type::BaseModel
      # @!attribute amount
      #   The amount of the asset held on this chain, denominated in the unit of the asset
      #   itself.
      #
      #   @return [String]
      required :amount, String

      # @!attribute chain_id
      #   The CAIP-2 chain identifier (e.g. eip155:4217 for Tempo, eip155:8453 for Base).
      #
      #   @return [String]
      required :chain_id, String

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

      # @!method initialize(amount:, chain_id:, price:, symbol:)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::BalanceAssetByChain} for more details.
      #
      #   A single asset entry scoped to a specific chain.
      #
      #   @param amount [String] The amount of the asset held on this chain, denominated in the unit of the asset
      #
      #   @param chain_id [String] The CAIP-2 chain identifier (e.g. eip155:4217 for Tempo, eip155:8453 for Base).
      #
      #   @param price [Privy::Models::CurrencyAmount] A monetary value with its currency denomination.
      #
      #   @param symbol [String] The symbol of the asset (e.g. USDC, ETH).
    end
  end
end
