# frozen_string_literal: true

module Privy
  module Models
    class SparkTransferRpcResponse < Privy::Internal::Type::BaseModel
      # @!attribute method_
      #
      #   @return [Symbol, Privy::Models::SparkTransferRpcResponse::Method]
      required :method_, enum: -> { Privy::SparkTransferRpcResponse::Method }, api_name: :method

      # @!attribute data
      #   A Spark transfer.
      #
      #   @return [Privy::Models::SparkTransfer, nil]
      optional :data, -> { Privy::SparkTransfer }

      # @!method initialize(method_:, data: nil)
      #   Response to the Spark `transfer` RPC.
      #
      #   @param method_ [Symbol, Privy::Models::SparkTransferRpcResponse::Method]
      #
      #   @param data [Privy::Models::SparkTransfer] A Spark transfer.

      # @see Privy::Models::SparkTransferRpcResponse#method_
      module Method
        extend Privy::Internal::Type::Enum

        TRANSFER = :transfer

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
