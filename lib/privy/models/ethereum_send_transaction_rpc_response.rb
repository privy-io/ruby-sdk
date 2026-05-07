# frozen_string_literal: true

module Privy
  module Models
    class EthereumSendTransactionRpcResponse < Privy::Internal::Type::BaseModel
      # @!attribute data
      #   Data returned by the EVM `eth_sendTransaction` RPC.
      #
      #   @return [Privy::Models::EthereumSendTransactionRpcResponseData]
      required :data, -> { Privy::EthereumSendTransactionRpcResponseData }

      # @!attribute method_
      #
      #   @return [Symbol, Privy::Models::EthereumSendTransactionRpcResponse::Method]
      required :method_, enum: -> { Privy::EthereumSendTransactionRpcResponse::Method }, api_name: :method

      # @!method initialize(data:, method_:)
      #   Response to the EVM `eth_sendTransaction` RPC.
      #
      #   @param data [Privy::Models::EthereumSendTransactionRpcResponseData] Data returned by the EVM `eth_sendTransaction` RPC.
      #
      #   @param method_ [Symbol, Privy::Models::EthereumSendTransactionRpcResponse::Method]

      # @see Privy::Models::EthereumSendTransactionRpcResponse#method_
      module Method
        extend Privy::Internal::Type::Enum

        ETH_SEND_TRANSACTION = :eth_sendTransaction

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
