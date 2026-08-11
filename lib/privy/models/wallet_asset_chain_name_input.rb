# frozen_string_literal: true

module Privy
  module Models
    # Supported blockchain network names for wallet balance and transaction queries.
    module WalletAssetChainNameInput
      extend Privy::Internal::Type::Union

      variant const: -> { Privy::Models::WalletAssetChainNameInput::ETHEREUM }

      variant const: -> { Privy::Models::WalletAssetChainNameInput::ARBITRUM }

      variant const: -> { Privy::Models::WalletAssetChainNameInput::AVALANCHE }

      variant const: -> { Privy::Models::WalletAssetChainNameInput::BASE }

      variant const: -> { Privy::Models::WalletAssetChainNameInput::TEMPO }

      variant const: -> { Privy::Models::WalletAssetChainNameInput::LINEA }

      variant const: -> { Privy::Models::WalletAssetChainNameInput::OPTIMISM }

      variant const: -> { Privy::Models::WalletAssetChainNameInput::POLYGON }

      variant const: -> { Privy::Models::WalletAssetChainNameInput::BSC }

      variant const: -> { Privy::Models::WalletAssetChainNameInput::SOLANA }

      variant const: -> { Privy::Models::WalletAssetChainNameInput::TRON }

      variant const: -> { Privy::Models::WalletAssetChainNameInput::ZKSYNC_ERA }

      variant const: -> { Privy::Models::WalletAssetChainNameInput::HOODI }

      variant const: -> { Privy::Models::WalletAssetChainNameInput::SEPOLIA }

      variant const: -> { Privy::Models::WalletAssetChainNameInput::ARBITRUM_SEPOLIA }

      variant const: -> { Privy::Models::WalletAssetChainNameInput::AVALANCHE_FUJI }

      variant const: -> { Privy::Models::WalletAssetChainNameInput::BASE_SEPOLIA }

      variant const: -> { Privy::Models::WalletAssetChainNameInput::LINEA_TESTNET }

      variant const: -> { Privy::Models::WalletAssetChainNameInput::OPTIMISM_SEPOLIA }

      variant const: -> { Privy::Models::WalletAssetChainNameInput::POLYGON_AMOY }

      variant const: -> { Privy::Models::WalletAssetChainNameInput::SOLANA_DEVNET }

      variant const: -> { Privy::Models::WalletAssetChainNameInput::SOLANA_TESTNET }

      variant const: -> { Privy::Models::WalletAssetChainNameInput::TRON_NILE }

      variant String

      # @!method self.variants
      #   @return [Array(Symbol, String)]

      define_sorbet_constant!(:Variants) do
        T.type_alias { T.any(Privy::WalletAssetChainNameInput::TaggedSymbol, String) }
      end

      # @!group

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
      HOODI = :hoodi
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

      # @!endgroup
    end
  end
end
