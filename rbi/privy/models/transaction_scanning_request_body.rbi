# typed: strong

module Privy
  module Models
    class TransactionScanningRequestBody < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::TransactionScanningRequestBody, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :chain_id

      # Additional information for Blockaid to validate against.
      sig { returns(Privy::TransactionScanningMetadata) }
      attr_reader :metadata

      sig { params(metadata: Privy::TransactionScanningMetadata::OrHash).void }
      attr_writer :metadata

      # Raw RPC request to execute with the wallet.
      sig { returns(Privy::TransactionScanningRpcRequest) }
      attr_reader :request

      sig { params(request: Privy::TransactionScanningRpcRequest::OrHash).void }
      attr_writer :request

      # The request body for scanning a transaction.
      sig do
        params(
          chain_id: String,
          metadata: Privy::TransactionScanningMetadata::OrHash,
          request: Privy::TransactionScanningRpcRequest::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        chain_id:,
        # Additional information for Blockaid to validate against.
        metadata:,
        # Raw RPC request to execute with the wallet.
        request:
      )
      end

      sig do
        override.returns(
          {
            chain_id: String,
            metadata: Privy::TransactionScanningMetadata,
            request: Privy::TransactionScanningRpcRequest
          }
        )
      end
      def to_hash
      end
    end
  end
end
