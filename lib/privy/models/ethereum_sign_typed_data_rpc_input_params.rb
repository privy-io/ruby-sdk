# frozen_string_literal: true

module Privy
  module Models
    class EthereumSignTypedDataRpcInputParams < Privy::Internal::Type::BaseModel
      # @!attribute typed_data
      #   EIP-712 typed data object.
      #
      #   @return [Privy::Models::EthereumTypedDataInput]
      required :typed_data, -> { Privy::EthereumTypedDataInput }

      # @!method initialize(typed_data:)
      #   Parameters for the EVM `eth_signTypedData_v4` RPC.
      #
      #   @param typed_data [Privy::Models::EthereumTypedDataInput] EIP-712 typed data object.
    end
  end
end
