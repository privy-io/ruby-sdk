# frozen_string_literal: true

module Privy
  module Models
    class EthereumSignTypedDataRpcResponse < Privy::Internal::Type::BaseModel
      # @!attribute data
      #   Data returned by the EVM `eth_signTypedData_v4` RPC.
      #
      #   @return [Privy::Models::EthereumSignTypedDataRpcResponseData]
      required :data, -> { Privy::EthereumSignTypedDataRpcResponseData }

      # @!attribute method_
      #
      #   @return [Symbol, Privy::Models::EthereumSignTypedDataRpcResponse::Method]
      required :method_, enum: -> { Privy::EthereumSignTypedDataRpcResponse::Method }, api_name: :method

      # @!method initialize(data:, method_:)
      #   Response to the EVM `eth_signTypedData_v4` RPC.
      #
      #   @param data [Privy::Models::EthereumSignTypedDataRpcResponseData] Data returned by the EVM `eth_signTypedData_v4` RPC.
      #
      #   @param method_ [Symbol, Privy::Models::EthereumSignTypedDataRpcResponse::Method]

      # @see Privy::Models::EthereumSignTypedDataRpcResponse#method_
      module Method
        extend Privy::Internal::Type::Enum

        ETH_SIGN_TYPED_DATA_V4 = :eth_signTypedData_v4

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
