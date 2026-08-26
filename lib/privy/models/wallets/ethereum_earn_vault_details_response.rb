# frozen_string_literal: true

module Privy
  module Models
    module Wallets
      # Detailed vault information including current APY, liquidity, and asset metadata.
      # Discriminated on provider.
      module EthereumEarnVaultDetailsResponse
        extend Privy::Internal::Type::Union

        discriminator :provider

        # Vault details for an Aave earn vault, including fee visibility.
        variant :aave, -> { Privy::Wallets::AaveVaultDetails }

        # Vault details for a Morpho earn vault.
        variant :morpho, -> { Privy::Wallets::MorphoVaultDetails }

        # Vault details for a Tempo earn vault.
        variant :tempo, -> { Privy::Wallets::TempoVaultDetails }

        # Vault details for a Veda (BoringVault) earn vault.
        variant :veda, -> { Privy::Wallets::VedaVaultDetails }

        # @!method self.variants
        #   @return [Array(Privy::Models::Wallets::AaveVaultDetails, Privy::Models::Wallets::MorphoVaultDetails, Privy::Models::Wallets::TempoVaultDetails, Privy::Models::Wallets::VedaVaultDetails)]
      end
    end
  end
end
