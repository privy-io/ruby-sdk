# frozen_string_literal: true

module Privy
  module Models
    class EthereumSign7702AuthorizationRpcResponseData < Privy::Internal::Type::BaseModel
      # @!attribute authorization
      #   A signed EIP-7702 authorization that delegates code execution to a contract
      #   address.
      #
      #   @return [Privy::Models::EthereumSign7702Authorization]
      required :authorization, -> { Privy::EthereumSign7702Authorization }

      # @!method initialize(authorization:)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::EthereumSign7702AuthorizationRpcResponseData} for more details.
      #
      #   Data returned by the EVM `eth_sign7702Authorization` RPC.
      #
      #   @param authorization [Privy::Models::EthereumSign7702Authorization] A signed EIP-7702 authorization that delegates code execution to a contract addr
    end
  end
end
