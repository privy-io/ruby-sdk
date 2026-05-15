# frozen_string_literal: true

module Privy
  module Models
    class SparkGetStaticDepositAddressRpcResponse < Privy::Internal::Type::BaseModel
      # @!attribute method_
      #
      #   @return [Symbol, Privy::Models::SparkGetStaticDepositAddressRpcResponse::Method]
      required :method_,
               enum: -> {
                 Privy::SparkGetStaticDepositAddressRpcResponse::Method
               },
               api_name: :method

      # @!attribute data
      #   Data returned by the Spark `getStaticDepositAddress` RPC.
      #
      #   @return [Privy::Models::SparkGetStaticDepositAddressRpcResponseData, nil]
      optional :data, -> { Privy::SparkGetStaticDepositAddressRpcResponseData }

      # @!method initialize(method_:, data: nil)
      #   Response to the Spark `getStaticDepositAddress` RPC.
      #
      #   @param method_ [Symbol, Privy::Models::SparkGetStaticDepositAddressRpcResponse::Method]
      #
      #   @param data [Privy::Models::SparkGetStaticDepositAddressRpcResponseData] Data returned by the Spark `getStaticDepositAddress` RPC.

      # @see Privy::Models::SparkGetStaticDepositAddressRpcResponse#method_
      module Method
        extend Privy::Internal::Type::Enum

        GET_STATIC_DEPOSIT_ADDRESS = :getStaticDepositAddress

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
