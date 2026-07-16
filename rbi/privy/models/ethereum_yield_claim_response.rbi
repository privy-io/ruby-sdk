# typed: strong

module Privy
  module Models
    class EthereumYieldClaimResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::EthereumYieldClaimResponse, Privy::Internal::AnyHash)
        end

      # Privy transaction record ID for the claim operation.
      sig { returns(String) }
      attr_accessor :id

      # An EVM CAIP-2 chain identifier (e.g., "eip155:4217" for Tempo, "eip155:8453" for
      # Base).
      sig { returns(String) }
      attr_accessor :caip2

      # Unix timestamp of when the claim was created, in milliseconds.
      sig { returns(Float) }
      attr_accessor :created_at

      # List of reward tokens claimed.
      sig { returns(T::Array[Privy::EthereumYieldClaimReward]) }
      attr_accessor :rewards

      # Status of a blockchain transaction submitted by Privy.
      sig { returns(Privy::BlockchainTransactionStatus::OrSymbol) }
      attr_accessor :status

      # Unix timestamp of when the claim was last updated, in milliseconds.
      sig { returns(Float) }
      attr_accessor :updated_at

      # Response from a yield reward claim operation.
      sig do
        params(
          id: String,
          caip2: String,
          created_at: Float,
          rewards: T::Array[Privy::EthereumYieldClaimReward::OrHash],
          status: Privy::BlockchainTransactionStatus::OrSymbol,
          updated_at: Float
        ).returns(T.attached_class)
      end
      def self.new(
        # Privy transaction record ID for the claim operation.
        id:,
        # An EVM CAIP-2 chain identifier (e.g., "eip155:4217" for Tempo, "eip155:8453" for
        # Base).
        caip2:,
        # Unix timestamp of when the claim was created, in milliseconds.
        created_at:,
        # List of reward tokens claimed.
        rewards:,
        # Status of a blockchain transaction submitted by Privy.
        status:,
        # Unix timestamp of when the claim was last updated, in milliseconds.
        updated_at:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            caip2: String,
            created_at: Float,
            rewards: T::Array[Privy::EthereumYieldClaimReward],
            status: Privy::BlockchainTransactionStatus::OrSymbol,
            updated_at: Float
          }
        )
      end
      def to_hash
      end
    end
  end
end
