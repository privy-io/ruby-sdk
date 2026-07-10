# typed: strong

module Privy
  module Models
    module Wallets
      class VedaVaultDetails < Privy::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Privy::Wallets::VedaVaultDetails, Privy::Internal::AnyHash)
          end

        # Vault identifier.
        sig { returns(String) }
        attr_accessor :id

        # EVM address of the vault admin wallet.
        sig { returns(String) }
        attr_accessor :admin_wallet_address

        # Privy wallet ID of the vault admin.
        sig { returns(String) }
        attr_accessor :admin_wallet_id

        # Annual percentage yield earned by the app from fee wrapper fees, in basis
        # points.
        sig { returns(T.nilable(Float)) }
        attr_accessor :app_apy

        # Asset metadata for an earn vault position.
        sig { returns(Privy::Wallets::EarnAsset) }
        attr_reader :asset

        sig { params(asset: Privy::Wallets::EarnAsset::OrHash).void }
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

        sig { returns(Privy::Wallets::VedaVaultDetails::Provider::OrSymbol) }
        attr_accessor :provider

        # Total value locked in USD.
        sig { returns(T.nilable(Float)) }
        attr_accessor :tvl_usd

        # Annual percentage yield available to the user, after fees and excluding rewards,
        # in basis points (e.g. 500 for 5%). 1 basis point = 0.01%.
        sig { returns(T.nilable(Float)) }
        attr_accessor :user_apy

        # Onchain vault contract address.
        sig { returns(String) }
        attr_accessor :vault_address

        # Vault details for a Veda (BoringVault) earn vault.
        sig do
          params(
            id: String,
            admin_wallet_address: String,
            admin_wallet_id: String,
            app_apy: T.nilable(Float),
            asset: Privy::Wallets::EarnAsset::OrHash,
            available_liquidity_usd: T.nilable(Float),
            caip2: String,
            name: String,
            provider: Privy::Wallets::VedaVaultDetails::Provider::OrSymbol,
            tvl_usd: T.nilable(Float),
            user_apy: T.nilable(Float),
            vault_address: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Vault identifier.
          id:,
          # EVM address of the vault admin wallet.
          admin_wallet_address:,
          # Privy wallet ID of the vault admin.
          admin_wallet_id:,
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
          provider:,
          # Total value locked in USD.
          tvl_usd:,
          # Annual percentage yield available to the user, after fees and excluding rewards,
          # in basis points (e.g. 500 for 5%). 1 basis point = 0.01%.
          user_apy:,
          # Onchain vault contract address.
          vault_address:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              admin_wallet_address: String,
              admin_wallet_id: String,
              app_apy: T.nilable(Float),
              asset: Privy::Wallets::EarnAsset,
              available_liquidity_usd: T.nilable(Float),
              caip2: String,
              name: String,
              provider: Privy::Wallets::VedaVaultDetails::Provider::OrSymbol,
              tvl_usd: T.nilable(Float),
              user_apy: T.nilable(Float),
              vault_address: String
            }
          )
        end
        def to_hash
        end

        module Provider
          extend Privy::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Privy::Wallets::VedaVaultDetails::Provider)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          VEDA =
            T.let(
              :veda,
              Privy::Wallets::VedaVaultDetails::Provider::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Privy::Wallets::VedaVaultDetails::Provider::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
