# frozen_string_literal: true

module Privy
  module Models
    class TmmfWalletUpdatedWebhookPayload < Privy::Internal::Type::BaseModel
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

      # @!attribute type
      #   The type of webhook event.
      #
      #   @return [Symbol, Privy::Models::TmmfWalletUpdatedWebhookPayload::Type]
      required :type, enum: -> { Privy::TmmfWalletUpdatedWebhookPayload::Type }

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

      # @!method initialize(address:, chain:, created_at:, provider:, status:, type:, updated_at:, user_id:, wallet_id:)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::TmmfWalletUpdatedWebhookPayload} for more details.
      #
      #   Payload for the tmmf.wallet.updated webhook event: a register request created or
      #   confirmed a tMMF wallet.
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
      #   @param type [Symbol, Privy::Models::TmmfWalletUpdatedWebhookPayload::Type] The type of webhook event.
      #
      #   @param updated_at [Integer] Unix timestamp in milliseconds when the wallet registration was last updated.
      #
      #   @param user_id [String] ID of the Privy user the wallet is registered for.
      #
      #   @param wallet_id [String] ID of the Privy wallet registered to trade and hold fund shares.

      # The type of webhook event.
      #
      # @see Privy::Models::TmmfWalletUpdatedWebhookPayload#type
      module Type
        extend Privy::Internal::Type::Enum

        TMMF_WALLET_UPDATED = :"tmmf.wallet.updated"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
