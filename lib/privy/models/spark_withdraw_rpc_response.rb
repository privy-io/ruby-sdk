# frozen_string_literal: true

module Privy
  module Models
    class SparkWithdrawRpcResponse < Privy::Internal::Type::BaseModel
      # @!attribute method_
      #
      #   @return [Symbol, Privy::Models::SparkWithdrawRpcResponse::Method]
      required :method_, enum: -> { Privy::SparkWithdrawRpcResponse::Method }, api_name: :method

      # @!attribute data
      #   A cooperative exit request from Spark to Bitcoin L1.
      #
      #   @return [Privy::Models::SparkCoopExitRequest, nil]
      optional :data, -> { Privy::SparkCoopExitRequest }

      # @!method initialize(method_:, data: nil)
      #   Response to the Spark `withdraw` RPC.
      #
      #   @param method_ [Symbol, Privy::Models::SparkWithdrawRpcResponse::Method]
      #
      #   @param data [Privy::Models::SparkCoopExitRequest] A cooperative exit request from Spark to Bitcoin L1.

      # @see Privy::Models::SparkWithdrawRpcResponse#method_
      module Method
        extend Privy::Internal::Type::Enum

        WITHDRAW = :withdraw

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
