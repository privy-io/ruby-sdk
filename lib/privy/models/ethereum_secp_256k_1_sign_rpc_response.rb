# frozen_string_literal: true

module Privy
  module Models
    class EthereumSecp256k1SignRpcResponse < Privy::Internal::Type::BaseModel
      # @!attribute data
      #   Data returned by the EVM `secp256k1_sign` RPC.
      #
      #   @return [Privy::Models::EthereumSecp256k1SignRpcResponseData]
      required :data, -> { Privy::EthereumSecp256k1SignRpcResponseData }

      # @!attribute method_
      #
      #   @return [Symbol, Privy::Models::EthereumSecp256k1SignRpcResponse::Method]
      required :method_, enum: -> { Privy::EthereumSecp256k1SignRpcResponse::Method }, api_name: :method

      # @!method initialize(data:, method_:)
      #   Response to the EVM `secp256k1_sign` RPC.
      #
      #   @param data [Privy::Models::EthereumSecp256k1SignRpcResponseData] Data returned by the EVM `secp256k1_sign` RPC.
      #
      #   @param method_ [Symbol, Privy::Models::EthereumSecp256k1SignRpcResponse::Method]

      # @see Privy::Models::EthereumSecp256k1SignRpcResponse#method_
      module Method
        extend Privy::Internal::Type::Enum

        SECP256K1_SIGN = :secp256k1_sign

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
