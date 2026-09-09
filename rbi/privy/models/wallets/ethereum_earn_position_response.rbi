# typed: strong

module Privy
  module Models
    module Wallets
      class EthereumEarnPositionResponse < Privy::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Privy::Wallets::EthereumEarnPositionResponse,
              Privy::Internal::AnyHash
            )
          end

        # Asset metadata for an earn vault position.
        sig { returns(Privy::Wallets::EarnAsset) }
        attr_reader :asset

        sig { params(asset: Privy::Wallets::EarnAsset::OrHash).void }
        attr_writer :asset

        # Current asset value in the vault (realtime from ERC-4626), in smallest unit.
        sig { returns(String) }
        attr_accessor :assets_in_vault

        # Current vault shares held (realtime from ERC-4626).
        sig { returns(String) }
        attr_accessor :shares_in_vault

        # Total amount deposited into the vault, in smallest unit.
        sig { returns(String) }
        attr_accessor :total_deposited

        # Total amount withdrawn from the vault, in smallest unit.
        sig { returns(String) }
        attr_accessor :total_withdrawn

        # Vault APY allocations by origin, returned together with apy_bps when available.
        sig do
          returns(
            T.nilable(T::Array[Privy::Wallets::EarnPositionApyAllocation])
          )
        end
        attr_reader :apy_allocation

        sig do
          params(
            apy_allocation:
              T::Array[Privy::Wallets::EarnPositionApyAllocation::OrHash]
          ).void
        end
        attr_writer :apy_allocation

        # Wallet-specific net APY in basis points, rounded to the nearest integer.
        # Returned together with apy_allocation when available.
        sig { returns(T.nilable(Integer)) }
        attr_reader :apy_bps

        sig { params(apy_bps: Integer).void }
        attr_writer :apy_bps

        # A wallet's position in an earn vault.
        sig do
          params(
            asset: Privy::Wallets::EarnAsset::OrHash,
            assets_in_vault: String,
            shares_in_vault: String,
            total_deposited: String,
            total_withdrawn: String,
            apy_allocation:
              T::Array[Privy::Wallets::EarnPositionApyAllocation::OrHash],
            apy_bps: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # Asset metadata for an earn vault position.
          asset:,
          # Current asset value in the vault (realtime from ERC-4626), in smallest unit.
          assets_in_vault:,
          # Current vault shares held (realtime from ERC-4626).
          shares_in_vault:,
          # Total amount deposited into the vault, in smallest unit.
          total_deposited:,
          # Total amount withdrawn from the vault, in smallest unit.
          total_withdrawn:,
          # Vault APY allocations by origin, returned together with apy_bps when available.
          apy_allocation: nil,
          # Wallet-specific net APY in basis points, rounded to the nearest integer.
          # Returned together with apy_allocation when available.
          apy_bps: nil
        )
        end

        sig do
          override.returns(
            {
              asset: Privy::Wallets::EarnAsset,
              assets_in_vault: String,
              shares_in_vault: String,
              total_deposited: String,
              total_withdrawn: String,
              apy_allocation:
                T::Array[Privy::Wallets::EarnPositionApyAllocation],
              apy_bps: Integer
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
