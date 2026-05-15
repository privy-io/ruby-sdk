# frozen_string_literal: true

module Privy
  module Models
    class EthereumSign7702AuthorizationRpcResponse < Privy::Internal::Type::BaseModel
      # @!attribute data
      #   Data returned by the EVM `eth_sign7702Authorization` RPC.
      #
      #   @return [Privy::Models::EthereumSign7702AuthorizationRpcResponseData]
      required :data, -> { Privy::EthereumSign7702AuthorizationRpcResponseData }

      # @!attribute method_
      #
      #   @return [Symbol, Privy::Models::EthereumSign7702AuthorizationRpcResponse::Method]
      required :method_,
               enum: -> {
                 Privy::EthereumSign7702AuthorizationRpcResponse::Method
               },
               api_name: :method

      # @!method initialize(data:, method_:)
      #   Response to the EVM `eth_sign7702Authorization` RPC.
      #
      #   @param data [Privy::Models::EthereumSign7702AuthorizationRpcResponseData] Data returned by the EVM `eth_sign7702Authorization` RPC.
      #
      #   @param method_ [Symbol, Privy::Models::EthereumSign7702AuthorizationRpcResponse::Method]

      # @see Privy::Models::EthereumSign7702AuthorizationRpcResponse#method_
      module Method
        extend Privy::Internal::Type::Enum

        ETH_SIGN7702_AUTHORIZATION = :eth_sign7702Authorization

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
