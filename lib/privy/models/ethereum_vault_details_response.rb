# frozen_string_literal: true

module Privy
  module Models
    class EthereumVaultDetailsResponse < Privy::Internal::Type::BaseModel
      # @!attribute id
      #   Vault identifier.
      #
      #   @return [String]
      required :id, String

      # @!attribute app_apy
      #   Annual percentage yield earned by the app from fee wrapper fees, in basis
      #   points. Null when APY data is unavailable.
      #
      #   @return [Float, nil]
      required :app_apy, Float, nil?: true

      # @!attribute asset_address
      #   Underlying asset token address.
      #
      #   @return [String]
      required :asset_address, String

      # @!attribute available_liquidity_usd
      #   Assets available for instant withdrawal in USD.
      #
      #   @return [Float, nil]
      required :available_liquidity_usd, Float, nil?: true

      # @!attribute caip2
      #   Chain identifier (e.g., eip155:4217 for Tempo, eip155:8453 for Base).
      #
      #   @return [String]
      required :caip2, String

      # @!attribute name
      #   Human-readable vault name from the yield provider.
      #
      #   @return [String]
      required :name, String

      # @!attribute provider
      #   Supported yield/lending protocol providers.
      #
      #   @return [Symbol, Privy::Models::EthereumYieldProvider]
      required :provider, enum: -> { Privy::EthereumYieldProvider }

      # @!attribute tvl_usd
      #   Total value locked in USD.
      #
      #   @return [Float, nil]
      required :tvl_usd, Float, nil?: true

      # @!attribute user_apy
      #   Current annual percentage yield in basis points (e.g., 500 for 5%). 1 basis
      #   point = 0.01%.
      #
      #   @return [Float, nil]
      required :user_apy, Float, nil?: true

      # @!attribute vault_address
      #   On-chain vault contract address.
      #
      #   @return [String]
      required :vault_address, String

      # @!method initialize(id:, app_apy:, asset_address:, available_liquidity_usd:, caip2:, name:, provider:, tvl_usd:, user_apy:, vault_address:)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::EthereumVaultDetailsResponse} for more details.
      #
      #   Detailed vault information including current APY and liquidity.
      #
      #   @param id [String] Vault identifier.
      #
      #   @param app_apy [Float, nil] Annual percentage yield earned by the app from fee wrapper fees, in basis points
      #
      #   @param asset_address [String] Underlying asset token address.
      #
      #   @param available_liquidity_usd [Float, nil] Assets available for instant withdrawal in USD.
      #
      #   @param caip2 [String] Chain identifier (e.g., eip155:4217 for Tempo, eip155:8453 for Base).
      #
      #   @param name [String] Human-readable vault name from the yield provider.
      #
      #   @param provider [Symbol, Privy::Models::EthereumYieldProvider] Supported yield/lending protocol providers.
      #
      #   @param tvl_usd [Float, nil] Total value locked in USD.
      #
      #   @param user_apy [Float, nil] Current annual percentage yield in basis points (e.g., 500 for 5%). 1 basis poin
      #
      #   @param vault_address [String] On-chain vault contract address.
    end
  end
end
