# typed: strong

module Privy
  module Models
    class EthereumVaultResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::EthereumVaultResponse, Privy::Internal::AnyHash)
        end

      # Unique identifier for the vault.
      sig { returns(String) }
      attr_accessor :id

      # The address of the underlying asset token (e.g., USDC).
      sig { returns(String) }
      attr_accessor :asset_address

      # The CAIP-2 chain identifier.
      sig { returns(String) }
      attr_accessor :caip2

      # Unix timestamp of when the vault was created, in milliseconds.
      sig { returns(Float) }
      attr_accessor :created_at

      # Supported yield/lending protocol providers.
      sig { returns(Privy::EthereumYieldProvider::OrSymbol) }
      attr_accessor :provider

      # The address of the underlying vault that the fee vault wraps. If this is not a
      # fee vault, this equals vault_address.
      sig { returns(String) }
      attr_accessor :underlying_vault_address

      # The on-chain address of the ERC-4626 vault contract.
      sig { returns(String) }
      attr_accessor :vault_address

      # A vault configuration for yield features.
      sig do
        params(
          id: String,
          asset_address: String,
          caip2: String,
          created_at: Float,
          provider: Privy::EthereumYieldProvider::OrSymbol,
          underlying_vault_address: String,
          vault_address: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier for the vault.
        id:,
        # The address of the underlying asset token (e.g., USDC).
        asset_address:,
        # The CAIP-2 chain identifier.
        caip2:,
        # Unix timestamp of when the vault was created, in milliseconds.
        created_at:,
        # Supported yield/lending protocol providers.
        provider:,
        # The address of the underlying vault that the fee vault wraps. If this is not a
        # fee vault, this equals vault_address.
        underlying_vault_address:,
        # The on-chain address of the ERC-4626 vault contract.
        vault_address:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            asset_address: String,
            caip2: String,
            created_at: Float,
            provider: Privy::EthereumYieldProvider::OrSymbol,
            underlying_vault_address: String,
            vault_address: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
