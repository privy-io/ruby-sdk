# typed: strong

module Privy
  module Models
    # Supported blockchain network names for wallet balance and transaction queries.
    module WalletAssetChainNameInput
      extend Privy::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, Privy::WalletAssetChainNameInput) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      ETHEREUM =
        T.let(:ethereum, Privy::WalletAssetChainNameInput::TaggedSymbol)
      ARBITRUM =
        T.let(:arbitrum, Privy::WalletAssetChainNameInput::TaggedSymbol)
      AVALANCHE =
        T.let(:avalanche, Privy::WalletAssetChainNameInput::TaggedSymbol)
      BASE = T.let(:base, Privy::WalletAssetChainNameInput::TaggedSymbol)
      TEMPO = T.let(:tempo, Privy::WalletAssetChainNameInput::TaggedSymbol)
      LINEA = T.let(:linea, Privy::WalletAssetChainNameInput::TaggedSymbol)
      OPTIMISM =
        T.let(:optimism, Privy::WalletAssetChainNameInput::TaggedSymbol)
      POLYGON = T.let(:polygon, Privy::WalletAssetChainNameInput::TaggedSymbol)
      BSC = T.let(:bsc, Privy::WalletAssetChainNameInput::TaggedSymbol)
      SOLANA = T.let(:solana, Privy::WalletAssetChainNameInput::TaggedSymbol)
      TRON = T.let(:tron, Privy::WalletAssetChainNameInput::TaggedSymbol)
      ZKSYNC_ERA =
        T.let(:zksync_era, Privy::WalletAssetChainNameInput::TaggedSymbol)
      SEPOLIA = T.let(:sepolia, Privy::WalletAssetChainNameInput::TaggedSymbol)
      ARBITRUM_SEPOLIA =
        T.let(:arbitrum_sepolia, Privy::WalletAssetChainNameInput::TaggedSymbol)
      AVALANCHE_FUJI =
        T.let(:avalanche_fuji, Privy::WalletAssetChainNameInput::TaggedSymbol)
      BASE_SEPOLIA =
        T.let(:base_sepolia, Privy::WalletAssetChainNameInput::TaggedSymbol)
      LINEA_TESTNET =
        T.let(:linea_testnet, Privy::WalletAssetChainNameInput::TaggedSymbol)
      OPTIMISM_SEPOLIA =
        T.let(:optimism_sepolia, Privy::WalletAssetChainNameInput::TaggedSymbol)
      POLYGON_AMOY =
        T.let(:polygon_amoy, Privy::WalletAssetChainNameInput::TaggedSymbol)
      SOLANA_DEVNET =
        T.let(:solana_devnet, Privy::WalletAssetChainNameInput::TaggedSymbol)
      SOLANA_TESTNET =
        T.let(:solana_testnet, Privy::WalletAssetChainNameInput::TaggedSymbol)
      TRON_NILE =
        T.let(:tron_nile, Privy::WalletAssetChainNameInput::TaggedSymbol)

      sig do
        override.returns(
          T::Array[Privy::WalletAssetChainNameInput::TaggedSymbol]
        )
      end
      def self.values
      end
    end
  end
end
