# frozen_string_literal: true

module Privy
  module Models
    module Wallets
      class TmmfWalletResponse < Privy::Internal::Type::BaseModel
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

        # @!attribute created_at
        #   Unix timestamp in milliseconds when the wallet registration was created.
        #
        #   @return [Integer]
        required :created_at, Integer

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

        # @!attribute updated_at
        #   Unix timestamp in milliseconds when the wallet registration was last updated.
        #
        #   @return [Integer]
        required :updated_at, Integer

        # @!attribute user_id
        #   ID of the Privy user the wallet is registered for.
        #
        #   @return [String]
        required :user_id, String

        # @!attribute wallet_id
        #   ID of the Privy wallet registered to trade and hold fund shares.
        #
        #   @return [String]
        required :wallet_id, String

        # @!method initialize(address:, chain:, created_at:, provider:, status:, updated_at:, user_id:, wallet_id:)
        #   Some parameter documentations has been truncated, see
        #   {Privy::Models::Wallets::TmmfWalletResponse} for more details.
        #
        #   A Privy wallet registered for a user with one tMMF provider on one chain.
        #
        #   @param address [String] Blockchain address of the registered wallet.
        #
        #   @param chain [String] Chain the fund is held on, e.g. "ethereum_sepolia".
        #
        #   @param created_at [Integer] Unix timestamp in milliseconds when the wallet registration was created.
        #
        #   @param provider [Symbol, String, Privy::Models::Wallets::TmmfProvider] The fund provider.
        #
        #   @param status [Symbol, String, Privy::Models::Wallets::TmmfProviderWalletStatus, nil] A registered wallet's status with its tMMF provider, read live from the provider
        #
        #   @param updated_at [Integer] Unix timestamp in milliseconds when the wallet registration was last updated.
        #
        #   @param user_id [String] ID of the Privy user the wallet is registered for.
        #
        #   @param wallet_id [String] ID of the Privy wallet registered to trade and hold fund shares.
      end
    end
  end
end
