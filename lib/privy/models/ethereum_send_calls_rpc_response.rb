# frozen_string_literal: true

module Privy
  module Models
    class EthereumSendCallsRpcResponse < Privy::Internal::Type::BaseModel
      # @!attribute data
      #   Data returned by the `wallet_sendCalls` RPC.
      #
      #   @return [Privy::Models::EthereumSendCallsRpcResponseData]
      required :data, -> { Privy::EthereumSendCallsRpcResponseData }

      # @!attribute method_
      #
      #   @return [Symbol, Privy::Models::EthereumSendCallsRpcResponse::Method]
      required :method_, enum: -> { Privy::EthereumSendCallsRpcResponse::Method }, api_name: :method

      # @!method initialize(data:, method_:)
      #   Response to the `wallet_sendCalls` RPC.
      #
      #   @param data [Privy::Models::EthereumSendCallsRpcResponseData] Data returned by the `wallet_sendCalls` RPC.
      #
      #   @param method_ [Symbol, Privy::Models::EthereumSendCallsRpcResponse::Method]

      # @see Privy::Models::EthereumSendCallsRpcResponse#method_
      module Method
        extend Privy::Internal::Type::Enum

        WALLET_SEND_CALLS = :wallet_sendCalls

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
