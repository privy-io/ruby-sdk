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

      # An EVM CAIP-2 chain identifier (e.g., "eip155:8453" for Base).
      sig { returns(String) }
      attr_accessor :caip2

      # Unix timestamp of when the claim was created, in milliseconds.
      sig { returns(Float) }
      attr_accessor :created_at

      # List of reward tokens claimed.
      sig { returns(T::Array[Privy::EthereumYieldClaimReward]) }
      attr_accessor :rewards

      # The current status of the claim transaction.
      sig { returns(Privy::EthereumYieldClaimResponse::Status::OrSymbol) }
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
          status: Privy::EthereumYieldClaimResponse::Status::OrSymbol,
          updated_at: Float
        ).returns(T.attached_class)
      end
      def self.new(
        # Privy transaction record ID for the claim operation.
        id:,
        # An EVM CAIP-2 chain identifier (e.g., "eip155:8453" for Base).
        caip2:,
        # Unix timestamp of when the claim was created, in milliseconds.
        created_at:,
        # List of reward tokens claimed.
        rewards:,
        # The current status of the claim transaction.
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
            status: Privy::EthereumYieldClaimResponse::Status::OrSymbol,
            updated_at: Float
          }
        )
      end
      def to_hash
      end

      # The current status of the claim transaction.
      module Status
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::EthereumYieldClaimResponse::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        BROADCASTED =
          T.let(
            :broadcasted,
            Privy::EthereumYieldClaimResponse::Status::TaggedSymbol
          )
        CONFIRMED =
          T.let(
            :confirmed,
            Privy::EthereumYieldClaimResponse::Status::TaggedSymbol
          )
        EXECUTION_REVERTED =
          T.let(
            :execution_reverted,
            Privy::EthereumYieldClaimResponse::Status::TaggedSymbol
          )
        FAILED =
          T.let(
            :failed,
            Privy::EthereumYieldClaimResponse::Status::TaggedSymbol
          )
        REPLACED =
          T.let(
            :replaced,
            Privy::EthereumYieldClaimResponse::Status::TaggedSymbol
          )
        FINALIZED =
          T.let(
            :finalized,
            Privy::EthereumYieldClaimResponse::Status::TaggedSymbol
          )
        PROVIDER_ERROR =
          T.let(
            :provider_error,
            Privy::EthereumYieldClaimResponse::Status::TaggedSymbol
          )
        PENDING =
          T.let(
            :pending,
            Privy::EthereumYieldClaimResponse::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Privy::EthereumYieldClaimResponse::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
