# frozen_string_literal: true

module Privy
  module Models
    class EthereumVaultResponse < Privy::Internal::Type::BaseModel
      # @!attribute id
      #   Unique identifier for the vault.
      #
      #   @return [String]
      required :id, String

      # @!attribute asset_address
      #   The address of the underlying asset token (e.g., USDC).
      #
      #   @return [String]
      required :asset_address, String

      # @!attribute caip2
      #   The CAIP-2 chain identifier.
      #
      #   @return [String]
      required :caip2, String

      # @!attribute created_at
      #   Unix timestamp of when the vault was created, in milliseconds.
      #
      #   @return [Float]
      required :created_at, Float

      # @!attribute provider
      #   Supported yield/lending protocol providers.
      #
      #   @return [Symbol, Privy::Models::EthereumYieldProvider]
      required :provider, enum: -> { Privy::EthereumYieldProvider }

      # @!attribute underlying_vault_address
      #   The address of the underlying vault that the fee vault wraps. If this is not a
      #   fee vault, this equals vault_address.
      #
      #   @return [String]
      required :underlying_vault_address, String

      # @!attribute vault_address
      #   The on-chain address of the ERC-4626 vault contract.
      #
      #   @return [String]
      required :vault_address, String

      # @!method initialize(id:, asset_address:, caip2:, created_at:, provider:, underlying_vault_address:, vault_address:)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::EthereumVaultResponse} for more details.
      #
      #   A vault configuration for yield features.
      #
      #   @param id [String] Unique identifier for the vault.
      #
      #   @param asset_address [String] The address of the underlying asset token (e.g., USDC).
      #
      #   @param caip2 [String] The CAIP-2 chain identifier.
      #
      #   @param created_at [Float] Unix timestamp of when the vault was created, in milliseconds.
      #
      #   @param provider [Symbol, Privy::Models::EthereumYieldProvider] Supported yield/lending protocol providers.
      #
      #   @param underlying_vault_address [String] The address of the underlying vault that the fee vault wraps. If this is not a f
      #
      #   @param vault_address [String] The on-chain address of the ERC-4626 vault contract.
    end
  end
end
