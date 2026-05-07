# frozen_string_literal: true

module Privy
  module Models
    class SparkTransferTokensRpcResponse < Privy::Internal::Type::BaseModel
      # @!attribute method_
      #
      #   @return [Symbol, Privy::Models::SparkTransferTokensRpcResponse::Method]
      required :method_, enum: -> { Privy::SparkTransferTokensRpcResponse::Method }, api_name: :method

      # @!attribute data
      #   Data returned by the Spark `transferTokens` RPC.
      #
      #   @return [Privy::Models::SparkTransferTokensRpcResponseData, nil]
      optional :data, -> { Privy::SparkTransferTokensRpcResponseData }

      # @!method initialize(method_:, data: nil)
      #   Response to the Spark `transferTokens` RPC.
      #
      #   @param method_ [Symbol, Privy::Models::SparkTransferTokensRpcResponse::Method]
      #
      #   @param data [Privy::Models::SparkTransferTokensRpcResponseData] Data returned by the Spark `transferTokens` RPC.

      # @see Privy::Models::SparkTransferTokensRpcResponse#method_
      module Method
        extend Privy::Internal::Type::Enum

        TRANSFER_TOKENS = :transferTokens

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
