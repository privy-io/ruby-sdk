# typed: strong

module Privy
  module Models
    class EthereumYieldDepositInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::EthereumYieldDepositInput, Privy::Internal::AnyHash)
        end

      # The amount of the underlying asset to deposit, in the smallest unit (e.g., wei
      # for ETH, 6 decimals for USDC). Must be a non-negative integer string.
      sig { returns(String) }
      attr_accessor :asset_amount

      # The ID of the vault to deposit into.
      sig { returns(String) }
      attr_accessor :vault_id

      # Input for depositing assets into an ERC-4626 vault.
      sig do
        params(asset_amount: String, vault_id: String).returns(T.attached_class)
      end
      def self.new(
        # The amount of the underlying asset to deposit, in the smallest unit (e.g., wei
        # for ETH, 6 decimals for USDC). Must be a non-negative integer string.
        asset_amount:,
        # The ID of the vault to deposit into.
        vault_id:
      )
      end

      sig { override.returns({ asset_amount: String, vault_id: String }) }
      def to_hash
      end
    end
  end
end
