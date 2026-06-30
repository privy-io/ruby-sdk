# typed: strong

module Privy
  module Models
    class EthereumVaultPosition < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::EthereumVaultPosition, Privy::Internal::AnyHash)
        end

      # The underlying token of a vault position.
      sig { returns(Privy::VaultAsset) }
      attr_reader :asset

      sig { params(asset: Privy::VaultAsset::OrHash).void }
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
          asset: Privy::VaultAsset::OrHash,
          assets_in_vault: String,
          shares_in_vault: String,
          total_deposited: String,
          total_withdrawn: String
        ).returns(T.attached_class)
      end
      def self.new(
        # The underlying token of a vault position.
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
            asset: Privy::VaultAsset,
            assets_in_vault: String,
            shares_in_vault: String,
            total_deposited: String,
            total_withdrawn: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
