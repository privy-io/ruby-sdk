# frozen_string_literal: true

module Privy
  module Models
    # Chains supported for transaction history queries.
    module TransactionChainNameInput
      extend Privy::Internal::Type::Enum

      ETHEREUM = :ethereum
      ARBITRUM = :arbitrum
      AVALANCHE = :avalanche
      BASE = :base
      BASE_SEPOLIA = :base_sepolia
      BSC = :bsc
      TEMPO = :tempo
      LINEA = :linea
      OPTIMISM = :optimism
      POLYGON = :polygon
      SOLANA = :solana
      SEPOLIA = :sepolia

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
