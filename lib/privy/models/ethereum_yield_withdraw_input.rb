# frozen_string_literal: true

module Privy
  module Models
    class EthereumYieldWithdrawInput < Privy::Internal::Type::BaseModel
      # @!attribute asset_amount
      #   The amount of the underlying asset to withdraw, in the smallest unit (e.g., wei
      #   for ETH, 6 decimals for USDC). Must be a non-negative integer string.
      #
      #   @return [String]
      required :asset_amount, String

      # @!attribute vault_id
      #   The ID of the vault to withdraw from.
      #
      #   @return [String]
      required :vault_id, String

      # @!method initialize(asset_amount:, vault_id:)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::EthereumYieldWithdrawInput} for more details.
      #
      #   Input for withdrawing assets from an ERC-4626 vault.
      #
      #   @param asset_amount [String] The amount of the underlying asset to withdraw, in the smallest unit (e.g., wei
      #
      #   @param vault_id [String] The ID of the vault to withdraw from.
    end
  end
end
