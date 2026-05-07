# frozen_string_literal: true

module Privy
  module Models
    class EthereumYieldDepositInput < Privy::Internal::Type::BaseModel
      # @!attribute asset_amount
      #   The amount of the underlying asset to deposit, in the smallest unit (e.g., wei
      #   for ETH, 6 decimals for USDC). Must be a non-negative integer string.
      #
      #   @return [String]
      required :asset_amount, String

      # @!attribute vault_id
      #   The ID of the vault to deposit into.
      #
      #   @return [String]
      required :vault_id, String

      # @!method initialize(asset_amount:, vault_id:)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::EthereumYieldDepositInput} for more details.
      #
      #   Input for depositing assets into an ERC-4626 vault.
      #
      #   @param asset_amount [String] The amount of the underlying asset to deposit, in the smallest unit (e.g., wei f
      #
      #   @param vault_id [String] The ID of the vault to deposit into.
    end
  end
end
