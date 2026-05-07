# frozen_string_literal: true

module Privy
  module Models
    class EthereumEarnVaultDetailsResponse < Privy::Internal::Type::BaseModel
      # @!attribute id
      #   Vault identifier.
      #
      #   @return [String]
      required :id, String

      # @!attribute app_apy
      #   Annual percentage yield earned by the app from fee wrapper fees, in basis
      #   points.
      #
      #   @return [Float, nil]
      required :app_apy, Float, nil?: true

      # @!attribute asset
      #   Asset metadata for an earn vault position.
      #
      #   @return [Privy::Models::EarnAsset]
      required :asset, -> { Privy::EarnAsset }

      # @!attribute available_liquidity_usd
      #   Available liquidity in USD.
      #
      #   @return [Float, nil]
      required :available_liquidity_usd, Float, nil?: true

      # @!attribute caip2
      #   CAIP-2 chain identifier (e.g. "eip155:8453").
      #
      #   @return [String]
      required :caip2, String

      # @!attribute name
      #   Human-readable vault name from the yield provider.
      #
      #   @return [String]
      required :name, String

      # @!attribute provider
      #   Supported earn provider protocols.
      #
      #   @return [Symbol, Privy::Models::EthereumEarnProvider]
      required :provider, enum: -> { Privy::EthereumEarnProvider }

      # @!attribute tvl_usd
      #   Total value locked in USD.
      #
      #   @return [Float, nil]
      required :tvl_usd, Float, nil?: true

      # @!attribute user_apy
      #   Current annual percentage yield in basis points (e.g. 500 for 5%). 1 basis point
      #   = 0.01%.
      #
      #   @return [Float, nil]
      required :user_apy, Float, nil?: true

      # @!attribute vault_address
      #   Onchain vault contract address.
      #
      #   @return [String]
      required :vault_address, String

      # @!method initialize(id:, app_apy:, asset:, available_liquidity_usd:, caip2:, name:, provider:, tvl_usd:, user_apy:, vault_address:)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::EthereumEarnVaultDetailsResponse} for more details.
      #
      #   Detailed vault information including current APY, liquidity, and asset metadata.
      #
      #   @param id [String] Vault identifier.
      #
      #   @param app_apy [Float, nil] Annual percentage yield earned by the app from fee wrapper fees, in basis points
      #
      #   @param asset [Privy::Models::EarnAsset] Asset metadata for an earn vault position.
      #
      #   @param available_liquidity_usd [Float, nil] Available liquidity in USD.
      #
      #   @param caip2 [String] CAIP-2 chain identifier (e.g. "eip155:8453").
      #
      #   @param name [String] Human-readable vault name from the yield provider.
      #
      #   @param provider [Symbol, Privy::Models::EthereumEarnProvider] Supported earn provider protocols.
      #
      #   @param tvl_usd [Float, nil] Total value locked in USD.
      #
      #   @param user_apy [Float, nil] Current annual percentage yield in basis points (e.g. 500 for 5%). 1 basis point
      #
      #   @param vault_address [String] Onchain vault contract address.
    end
  end
end
