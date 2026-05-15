# typed: strong

module Privy
  module Models
    class EthereumVaultPosition < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::EthereumVaultPosition, Privy::Internal::AnyHash)
        end

      sig { returns(Privy::EthereumVaultPosition::Asset) }
      attr_reader :asset

      sig { params(asset: Privy::EthereumVaultPosition::Asset::OrHash).void }
      attr_writer :asset

      # Current asset value in the vault (realtime from ERC4626), in smallest unit.
      sig { returns(String) }
      attr_accessor :assets_in_vault

      # Current vault shares held (realtime from ERC4626).
      sig { returns(String) }
      attr_accessor :shares_in_vault

      # Total amount deposited into the vault, in smallest unit.
      sig { returns(String) }
      attr_accessor :total_deposited

      # Total amount withdrawn from the vault, in smallest unit.
      sig { returns(String) }
      attr_accessor :total_withdrawn

      # A user's position in a DeFi vault.
      sig do
        params(
          asset: Privy::EthereumVaultPosition::Asset::OrHash,
          assets_in_vault: String,
          shares_in_vault: String,
          total_deposited: String,
          total_withdrawn: String
        ).returns(T.attached_class)
      end
      def self.new(
        asset:,
        # Current asset value in the vault (realtime from ERC4626), in smallest unit.
        assets_in_vault:,
        # Current vault shares held (realtime from ERC4626).
        shares_in_vault:,
        # Total amount deposited into the vault, in smallest unit.
        total_deposited:,
        # Total amount withdrawn from the vault, in smallest unit.
        total_withdrawn:
      )
      end

      sig do
        override.returns(
          {
            asset: Privy::EthereumVaultPosition::Asset,
            assets_in_vault: String,
            shares_in_vault: String,
            total_deposited: String,
            total_withdrawn: String
          }
        )
      end
      def to_hash
      end

      class Asset < Privy::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Privy::EthereumVaultPosition::Asset, Privy::Internal::AnyHash)
          end

        # Token contract address.
        sig { returns(String) }
        attr_accessor :address

        # Token symbol (e.g., "USDC").
        sig { returns(String) }
        attr_accessor :symbol

        sig do
          params(address: String, symbol: String).returns(T.attached_class)
        end
        def self.new(
          # Token contract address.
          address:,
          # Token symbol (e.g., "USDC").
          symbol:
        )
        end

        sig { override.returns({ address: String, symbol: String }) }
        def to_hash
        end
      end
    end
  end
end
