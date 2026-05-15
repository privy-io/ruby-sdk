# typed: strong

module Privy
  module Models
    class EthereumYieldSweepResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::EthereumYieldSweepResponse, Privy::Internal::AnyHash)
        end

      # Unique identifier for the yield sweep.
      sig { returns(String) }
      attr_accessor :id

      # The amount of underlying assets involved. Set after the sweep is confirmed
      # on-chain.
      sig { returns(T.nilable(String)) }
      attr_accessor :asset_amount

      # Unix timestamp of when the sweep was created, in milliseconds.
      sig { returns(Float) }
      attr_accessor :created_at

      # The amount of vault shares involved. Set after the sweep is confirmed on-chain.
      sig { returns(T.nilable(String)) }
      attr_accessor :share_amount

      # Status of a yield sweep.
      sig { returns(Privy::EthereumYieldSweepStatus::OrSymbol) }
      attr_accessor :status

      # Type of yield sweep.
      sig { returns(Privy::EthereumYieldSweepType::OrSymbol) }
      attr_accessor :type

      # Unix timestamp of when the sweep was last updated, in milliseconds.
      sig { returns(Float) }
      attr_accessor :updated_at

      # The ID of the vault involved in the sweep.
      sig { returns(String) }
      attr_accessor :vault_id

      # The ID of the wallet involved in the sweep.
      sig { returns(String) }
      attr_accessor :wallet_id

      # A yield sweep record representing a deposit or withdrawal.
      sig do
        params(
          id: String,
          asset_amount: T.nilable(String),
          created_at: Float,
          share_amount: T.nilable(String),
          status: Privy::EthereumYieldSweepStatus::OrSymbol,
          type: Privy::EthereumYieldSweepType::OrSymbol,
          updated_at: Float,
          vault_id: String,
          wallet_id: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier for the yield sweep.
        id:,
        # The amount of underlying assets involved. Set after the sweep is confirmed
        # on-chain.
        asset_amount:,
        # Unix timestamp of when the sweep was created, in milliseconds.
        created_at:,
        # The amount of vault shares involved. Set after the sweep is confirmed on-chain.
        share_amount:,
        # Status of a yield sweep.
        status:,
        # Type of yield sweep.
        type:,
        # Unix timestamp of when the sweep was last updated, in milliseconds.
        updated_at:,
        # The ID of the vault involved in the sweep.
        vault_id:,
        # The ID of the wallet involved in the sweep.
        wallet_id:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            asset_amount: T.nilable(String),
            created_at: Float,
            share_amount: T.nilable(String),
            status: Privy::EthereumYieldSweepStatus::OrSymbol,
            type: Privy::EthereumYieldSweepType::OrSymbol,
            updated_at: Float,
            vault_id: String,
            wallet_id: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
