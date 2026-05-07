# typed: strong

module Privy
  module Models
    class EthereumVaultDetailsResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::EthereumVaultDetailsResponse, Privy::Internal::AnyHash)
        end

      # Vault identifier.
      sig { returns(String) }
      attr_accessor :id

      # Annual percentage yield earned by the app from fee wrapper fees, in basis
      # points. Null when APY data is unavailable.
      sig { returns(T.nilable(Float)) }
      attr_accessor :app_apy

      # Underlying asset token address.
      sig { returns(String) }
      attr_accessor :asset_address

      # Assets available for instant withdrawal in USD.
      sig { returns(T.nilable(Float)) }
      attr_accessor :available_liquidity_usd

      # Chain identifier (e.g., eip155:8453).
      sig { returns(String) }
      attr_accessor :caip2

      # Human-readable vault name from the yield provider.
      sig { returns(String) }
      attr_accessor :name

      # Supported yield/lending protocol providers.
      sig { returns(Privy::EthereumYieldProvider::OrSymbol) }
      attr_accessor :provider

      # Total value locked in USD.
      sig { returns(T.nilable(Float)) }
      attr_accessor :tvl_usd

      # Current annual percentage yield in basis points (e.g., 500 for 5%). 1 basis
      # point = 0.01%.
      sig { returns(T.nilable(Float)) }
      attr_accessor :user_apy

      # On-chain vault contract address.
      sig { returns(String) }
      attr_accessor :vault_address

      # Detailed vault information including current APY and liquidity.
      sig do
        params(
          id: String,
          app_apy: T.nilable(Float),
          asset_address: String,
          available_liquidity_usd: T.nilable(Float),
          caip2: String,
          name: String,
          provider: Privy::EthereumYieldProvider::OrSymbol,
          tvl_usd: T.nilable(Float),
          user_apy: T.nilable(Float),
          vault_address: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Vault identifier.
        id:,
        # Annual percentage yield earned by the app from fee wrapper fees, in basis
        # points. Null when APY data is unavailable.
        app_apy:,
        # Underlying asset token address.
        asset_address:,
        # Assets available for instant withdrawal in USD.
        available_liquidity_usd:,
        # Chain identifier (e.g., eip155:8453).
        caip2:,
        # Human-readable vault name from the yield provider.
        name:,
        # Supported yield/lending protocol providers.
        provider:,
        # Total value locked in USD.
        tvl_usd:,
        # Current annual percentage yield in basis points (e.g., 500 for 5%). 1 basis
        # point = 0.01%.
        user_apy:,
        # On-chain vault contract address.
        vault_address:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            app_apy: T.nilable(Float),
            asset_address: String,
            available_liquidity_usd: T.nilable(Float),
            caip2: String,
            name: String,
            provider: Privy::EthereumYieldProvider::OrSymbol,
            tvl_usd: T.nilable(Float),
            user_apy: T.nilable(Float),
            vault_address: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
