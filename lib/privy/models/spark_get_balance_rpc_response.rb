# frozen_string_literal: true

module Privy
  module Models
    class SparkGetBalanceRpcResponse < Privy::Internal::Type::BaseModel
      # @!attribute method_
      #
      #   @return [Symbol, Privy::Models::SparkGetBalanceRpcResponse::Method]
      required :method_, enum: -> { Privy::SparkGetBalanceRpcResponse::Method }, api_name: :method

      # @!attribute data
      #   The balance of a Spark wallet.
      #
      #   @return [Privy::Models::SparkBalance, nil]
      optional :data, -> { Privy::SparkBalance }

      # @!method initialize(method_:, data: nil)
      #   Response to the Spark `getBalance` RPC.
      #
      #   @param method_ [Symbol, Privy::Models::SparkGetBalanceRpcResponse::Method]
      #
      #   @param data [Privy::Models::SparkBalance] The balance of a Spark wallet.

      # @see Privy::Models::SparkGetBalanceRpcResponse#method_
      module Method
        extend Privy::Internal::Type::Enum

        GET_BALANCE = :getBalance

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
