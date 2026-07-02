# frozen_string_literal: true

module Privy
  module Models
    # Supported blockchain network names for wallet balance and transaction queries.
    module WalletAssetChainNameInput
      extend Privy::Internal::Type::Enum

      ETHEREUM = :ethereum
      ARBITRUM = :arbitrum
      AVALANCHE = :avalanche
      BASE = :base
      TEMPO = :tempo
      LINEA = :linea
      OPTIMISM = :optimism
      POLYGON = :polygon
      BSC = :bsc
      SOLANA = :solana
      TRON = :tron
      ZKSYNC_ERA = :zksync_era
      SEPOLIA = :sepolia
      ARBITRUM_SEPOLIA = :arbitrum_sepolia
      AVALANCHE_FUJI = :avalanche_fuji
      BASE_SEPOLIA = :base_sepolia
      LINEA_TESTNET = :linea_testnet
      OPTIMISM_SEPOLIA = :optimism_sepolia
      POLYGON_AMOY = :polygon_amoy
      SOLANA_DEVNET = :solana_devnet
      SOLANA_TESTNET = :solana_testnet
      TRON_NILE = :tron_nile

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
