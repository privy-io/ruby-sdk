# frozen_string_literal: true

module Privy
  module Models
    class EthereumSignUserOperationRpcResponse < Privy::Internal::Type::BaseModel
      # @!attribute data
      #   Data returned by the EVM `eth_signUserOperation` RPC.
      #
      #   @return [Privy::Models::EthereumSignUserOperationRpcResponseData]
      required :data, -> { Privy::EthereumSignUserOperationRpcResponseData }

      # @!attribute method_
      #
      #   @return [Symbol, Privy::Models::EthereumSignUserOperationRpcResponse::Method]
      required :method_, enum: -> { Privy::EthereumSignUserOperationRpcResponse::Method }, api_name: :method

      # @!method initialize(data:, method_:)
      #   Response to the EVM `eth_signUserOperation` RPC.
      #
      #   @param data [Privy::Models::EthereumSignUserOperationRpcResponseData] Data returned by the EVM `eth_signUserOperation` RPC.
      #
      #   @param method_ [Symbol, Privy::Models::EthereumSignUserOperationRpcResponse::Method]

      # @see Privy::Models::EthereumSignUserOperationRpcResponse#method_
      module Method
        extend Privy::Internal::Type::Enum

        ETH_SIGN_USER_OPERATION = :eth_signUserOperation

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
