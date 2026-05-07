# frozen_string_literal: true

module Privy
  module Models
    class EthereumSignTransactionRpcResponse < Privy::Internal::Type::BaseModel
      # @!attribute data
      #   Data returned by the EVM `eth_signTransaction` RPC.
      #
      #   @return [Privy::Models::EthereumSignTransactionRpcResponseData]
      required :data, -> { Privy::EthereumSignTransactionRpcResponseData }

      # @!attribute method_
      #
      #   @return [Symbol, Privy::Models::EthereumSignTransactionRpcResponse::Method]
      required :method_, enum: -> { Privy::EthereumSignTransactionRpcResponse::Method }, api_name: :method

      # @!method initialize(data:, method_:)
      #   Response to the EVM `eth_signTransaction` RPC.
      #
      #   @param data [Privy::Models::EthereumSignTransactionRpcResponseData] Data returned by the EVM `eth_signTransaction` RPC.
      #
      #   @param method_ [Symbol, Privy::Models::EthereumSignTransactionRpcResponse::Method]

      # @see Privy::Models::EthereumSignTransactionRpcResponse#method_
      module Method
        extend Privy::Internal::Type::Enum

        ETH_SIGN_TRANSACTION = :eth_signTransaction

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
