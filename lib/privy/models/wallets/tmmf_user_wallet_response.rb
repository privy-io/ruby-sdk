# frozen_string_literal: true

module Privy
  module Models
    module Wallets
      class TmmfUserWalletResponse < Privy::Internal::Type::BaseModel
        # @!attribute address
        #   Blockchain address of the registered wallet.
        #
        #   @return [String]
        required :address, String

        # @!attribute chain
        #   Chain the fund is held on, e.g. "ethereum_sepolia".
        #
        #   @return [String]
        required :chain, String

        # @!attribute provider
        #   The fund provider.
        #
        #   @return [Symbol, String, Privy::Models::Wallets::TmmfProvider]
        required :provider, union: -> { Privy::Wallets::TmmfProvider }

        # @!attribute status
        #   A registered wallet's status with its tMMF provider, read live from the
        #   provider.
        #
        #   @return [Symbol, String, Privy::Models::Wallets::TmmfProviderWalletStatus, nil]
        required :status, union: -> { Privy::Wallets::TmmfProviderWalletStatus }, nil?: true

        # @!attribute wallet_id
        #   ID of the registered Privy wallet.
        #
        #   @return [String]
        required :wallet_id, String

        # @!method initialize(address:, chain:, provider:, status:, wallet_id:)
        #   Some parameter documentations has been truncated, see
        #   {Privy::Models::Wallets::TmmfUserWalletResponse} for more details.
        #
        #   A wallet registered for a user with a provider on one chain.
        #
        #   @param address [String] Blockchain address of the registered wallet.
        #
        #   @param chain [String] Chain the fund is held on, e.g. "ethereum_sepolia".
        #
        #   @param provider [Symbol, String, Privy::Models::Wallets::TmmfProvider] The fund provider.
        #
        #   @param status [Symbol, String, Privy::Models::Wallets::TmmfProviderWalletStatus, nil] A registered wallet's status with its tMMF provider, read live from the provider
        #
        #   @param wallet_id [String] ID of the registered Privy wallet.
      end
    end
  end
end
