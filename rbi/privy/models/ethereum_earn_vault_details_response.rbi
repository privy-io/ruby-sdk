# typed: strong

module Privy
  module Models
    class EthereumEarnVaultDetailsResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::EthereumEarnVaultDetailsResponse,
            Privy::Internal::AnyHash
          )
        end

      # Vault identifier.
      sig { returns(String) }
      attr_accessor :id

      # Annual percentage yield earned by the app from fee wrapper fees, in basis
      # points.
      sig { returns(T.nilable(Float)) }
      attr_accessor :app_apy

      # Asset metadata for an earn vault position.
      sig { returns(Privy::EarnAsset) }
      attr_reader :asset

      sig { params(asset: Privy::EarnAsset::OrHash).void }
      attr_writer :asset

      # Available liquidity in USD.
      sig { returns(T.nilable(Float)) }
      attr_accessor :available_liquidity_usd

      # CAIP-2 chain identifier (e.g. "eip155:8453").
      sig { returns(String) }
      attr_accessor :caip2

      # Human-readable vault name from the yield provider.
      sig { returns(String) }
      attr_accessor :name

      # Supported earn provider protocols.
      sig { returns(Privy::EthereumEarnProvider::OrSymbol) }
      attr_accessor :provider

      # Total value locked in USD.
      sig { returns(T.nilable(Float)) }
      attr_accessor :tvl_usd

      # Current annual percentage yield in basis points (e.g. 500 for 5%). 1 basis point
      # = 0.01%.
      sig { returns(T.nilable(Float)) }
      attr_accessor :user_apy

      # Onchain vault contract address.
      sig { returns(String) }
      attr_accessor :vault_address

      # Detailed vault information including current APY, liquidity, and asset metadata.
      sig do
        params(
          id: String,
          app_apy: T.nilable(Float),
          asset: Privy::EarnAsset::OrHash,
          available_liquidity_usd: T.nilable(Float),
          caip2: String,
          name: String,
          provider: Privy::EthereumEarnProvider::OrSymbol,
          tvl_usd: T.nilable(Float),
          user_apy: T.nilable(Float),
          vault_address: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Vault identifier.
        id:,
        # Annual percentage yield earned by the app from fee wrapper fees, in basis
        # points.
        app_apy:,
        # Asset metadata for an earn vault position.
        asset:,
        # Available liquidity in USD.
        available_liquidity_usd:,
        # CAIP-2 chain identifier (e.g. "eip155:8453").
        caip2:,
        # Human-readable vault name from the yield provider.
        name:,
        # Supported earn provider protocols.
        provider:,
        # Total value locked in USD.
        tvl_usd:,
        # Current annual percentage yield in basis points (e.g. 500 for 5%). 1 basis point
        # = 0.01%.
        user_apy:,
        # Onchain vault contract address.
        vault_address:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            app_apy: T.nilable(Float),
            asset: Privy::EarnAsset,
            available_liquidity_usd: T.nilable(Float),
            caip2: String,
            name: String,
            provider: Privy::EthereumEarnProvider::OrSymbol,
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
