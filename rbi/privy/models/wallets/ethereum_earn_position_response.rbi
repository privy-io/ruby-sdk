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

        # A wallet's position in an earn vault.
        sig do
          params(
            asset: Privy::Wallets::EarnAsset::OrHash,
            assets_in_vault: String,
            shares_in_vault: String,
            total_deposited: String,
            total_withdrawn: String
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
          total_withdrawn:
        )
        end

        sig do
          override.returns(
            {
              asset: Privy::Wallets::EarnAsset,
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
end
