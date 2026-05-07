# frozen_string_literal: true

module Privy
  module Models
    class BalanceResponse < Privy::Internal::Type::BaseModel
      # @!attribute assets
      #   The individual asset balances, each computed across all supported chains.
      #
      #   @return [Array<Privy::Models::BalanceAsset>]
      required :assets, -> { Privy::Internal::Type::ArrayOf[Privy::BalanceAsset] }

      # @!attribute total
      #   A monetary value with its currency denomination.
      #
      #   @return [Privy::Models::CurrencyAmount]
      required :total, -> { Privy::CurrencyAmount }

      # @!attribute assets_by_chain
      #   Individual asset balances per chain.
      #
      #   @return [Array<Privy::Models::BalanceAssetByChain>, nil]
      optional :assets_by_chain, -> { Privy::Internal::Type::ArrayOf[Privy::BalanceAssetByChain] }

      # @!method initialize(assets:, total:, assets_by_chain: nil)
      #   Balances for an asset account or wallet
      #
      #   @param assets [Array<Privy::Models::BalanceAsset>] The individual asset balances, each computed across all supported chains.
      #
      #   @param total [Privy::Models::CurrencyAmount] A monetary value with its currency denomination.
      #
      #   @param assets_by_chain [Array<Privy::Models::BalanceAssetByChain>] Individual asset balances per chain.
    end
  end
end
