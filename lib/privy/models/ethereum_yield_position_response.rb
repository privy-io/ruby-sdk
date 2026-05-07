# frozen_string_literal: true

module Privy
  module Models
    class EthereumYieldPositionResponse < Privy::Internal::Type::BaseModel
      # @!attribute asset
      #
      #   @return [Privy::Models::EthereumYieldPositionResponse::Asset]
      required :asset, -> { Privy::EthereumYieldPositionResponse::Asset }

      # @!attribute assets_in_vault
      #   Current asset value in the vault (realtime from ERC4626), in smallest unit.
      #
      #   @return [String]
      required :assets_in_vault, String

      # @!attribute shares_in_vault
      #   Current vault shares held (realtime from ERC4626).
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
      #   A user's position in a yield vault.
      #
      #   @param asset [Privy::Models::EthereumYieldPositionResponse::Asset]
      #
      #   @param assets_in_vault [String] Current asset value in the vault (realtime from ERC4626), in smallest unit.
      #
      #   @param shares_in_vault [String] Current vault shares held (realtime from ERC4626).
      #
      #   @param total_deposited [String] Total amount deposited into the vault, in smallest unit.
      #
      #   @param total_withdrawn [String] Total amount withdrawn from the vault, in smallest unit.

      # @see Privy::Models::EthereumYieldPositionResponse#asset
      class Asset < Privy::Internal::Type::BaseModel
        # @!attribute address
        #   Token contract address.
        #
        #   @return [String]
        required :address, String

        # @!attribute symbol
        #   Token symbol (e.g., "USDC").
        #
        #   @return [String]
        required :symbol, String

        # @!method initialize(address:, symbol:)
        #   @param address [String] Token contract address.
        #
        #   @param symbol [String] Token symbol (e.g., "USDC").
      end
    end
  end
end
