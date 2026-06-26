# frozen_string_literal: true

module Privy
  module Models
    module Wallets
      class EthereumEarnPositionResponse < Privy::Internal::Type::BaseModel
        # @!attribute asset
        #   Asset metadata for an earn vault position.
        #
        #   @return [Privy::Models::Wallets::EarnAsset]
        required :asset, -> { Privy::Wallets::EarnAsset }

        # @!attribute assets_in_vault
        #   Current asset value in the vault (realtime from ERC-4626), in smallest unit.
        #
        #   @return [String]
        required :assets_in_vault, String

        # @!attribute shares_in_vault
        #   Current vault shares held (realtime from ERC-4626).
        #
        #   @return [String]
        required :shares_in_vault, String

        # @!attribute total_deposited
        #   Total amount deposited into the vault, in smallest unit.
        #
        #   @return [String]
        required :total_deposited, String

        # @!attribute total_withdrawn
        #   Total amount withdrawn from the vault, in smallest unit.
        #
        #   @return [String]
        required :total_withdrawn, String

        # @!method initialize(asset:, assets_in_vault:, shares_in_vault:, total_deposited:, total_withdrawn:)
        #   A wallet's position in an earn vault.
        #
        #   @param asset [Privy::Models::Wallets::EarnAsset] Asset metadata for an earn vault position.
        #
        #   @param assets_in_vault [String] Current asset value in the vault (realtime from ERC-4626), in smallest unit.
        #
        #   @param shares_in_vault [String] Current vault shares held (realtime from ERC-4626).
        #
        #   @param total_deposited [String] Total amount deposited into the vault, in smallest unit.
        #
        #   @param total_withdrawn [String] Total amount withdrawn from the vault, in smallest unit.
      end
    end
  end
end
