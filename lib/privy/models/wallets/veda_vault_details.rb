# frozen_string_literal: true

module Privy
  module Models
    module Wallets
      class VedaVaultDetails < Privy::Internal::Type::BaseModel
        # @!attribute id
        #   Vault identifier.
        #
        #   @return [String]
        required :id, String

        # @!attribute admin_wallet_address
        #   EVM address of the vault admin wallet.
        #
        #   @return [String]
        required :admin_wallet_address, String

        # @!attribute admin_wallet_id
        #   Privy wallet ID of the vault admin.
        #
        #   @return [String]
        required :admin_wallet_id, String

        # @!attribute app_apy
        #   Annual percentage yield earned by the app from fee wrapper fees, in basis
        #   points.
        #
        #   @return [Float, nil]
        required :app_apy, Float, nil?: true

        # @!attribute asset
        #   Asset metadata for an earn vault position.
        #
        #   @return [Privy::Models::Wallets::EarnAsset]
        required :asset, -> { Privy::Wallets::EarnAsset }

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
        #
        #   @return [Symbol, Privy::Models::Wallets::VedaVaultDetails::Provider]
        required :provider, enum: -> { Privy::Wallets::VedaVaultDetails::Provider }

        # @!attribute tvl_usd
        #   Total value locked in USD.
        #
        #   @return [Float, nil]
        required :tvl_usd, Float, nil?: true

        # @!attribute user_apy
        #   Annual percentage yield available to the user, after fees and excluding rewards,
        #   in basis points (e.g. 500 for 5%). 1 basis point = 0.01%.
        #
        #   @return [Float, nil]
        required :user_apy, Float, nil?: true

        # @!attribute vault_address
        #   Onchain vault contract address.
        #
        #   @return [String]
        required :vault_address, String

        # @!method initialize(id:, admin_wallet_address:, admin_wallet_id:, app_apy:, asset:, available_liquidity_usd:, caip2:, name:, provider:, tvl_usd:, user_apy:, vault_address:)
        #   Some parameter documentations has been truncated, see
        #   {Privy::Models::Wallets::VedaVaultDetails} for more details.
        #
        #   Vault details for a Veda (BoringVault) earn vault.
        #
        #   @param id [String] Vault identifier.
        #
        #   @param admin_wallet_address [String] EVM address of the vault admin wallet.
        #
        #   @param admin_wallet_id [String] Privy wallet ID of the vault admin.
        #
        #   @param app_apy [Float, nil] Annual percentage yield earned by the app from fee wrapper fees, in basis points
        #
        #   @param asset [Privy::Models::Wallets::EarnAsset] Asset metadata for an earn vault position.
        #
        #   @param available_liquidity_usd [Float, nil] Available liquidity in USD.
        #
        #   @param caip2 [String] CAIP-2 chain identifier (e.g. "eip155:8453").
        #
        #   @param name [String] Human-readable vault name from the yield provider.
        #
        #   @param provider [Symbol, Privy::Models::Wallets::VedaVaultDetails::Provider]
        #
        #   @param tvl_usd [Float, nil] Total value locked in USD.
        #
        #   @param user_apy [Float, nil] Annual percentage yield available to the user, after fees and excluding rewards,
        #
        #   @param vault_address [String] Onchain vault contract address.

        # @see Privy::Models::Wallets::VedaVaultDetails#provider
        module Provider
          extend Privy::Internal::Type::Enum

          VEDA = :veda

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
