# frozen_string_literal: true

module Privy
  module Models
    class TransactionScanningRequestBody < Privy::Internal::Type::BaseModel
      # @!attribute chain_id
      #
      #   @return [String]
      required :chain_id, String

      # @!attribute metadata
      #   Additional information for Blockaid to validate against.
      #
      #   @return [Privy::Models::TransactionScanningMetadata]
      required :metadata, -> { Privy::TransactionScanningMetadata }

      # @!attribute request
      #   Raw RPC request to execute with the wallet.
      #
      #   @return [Privy::Models::TransactionScanningRpcRequest]
      required :request, -> { Privy::TransactionScanningRpcRequest }

      # @!method initialize(chain_id:, metadata:, request:)
      #   The request body for scanning a transaction.
      #
      #   @param chain_id [String]
      #
      #   @param metadata [Privy::Models::TransactionScanningMetadata] Additional information for Blockaid to validate against.
      #
      #   @param request [Privy::Models::TransactionScanningRpcRequest] Raw RPC request to execute with the wallet.
    end
  end
end
