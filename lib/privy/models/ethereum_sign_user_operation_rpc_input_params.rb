# frozen_string_literal: true

module Privy
  module Models
    class EthereumSignUserOperationRpcInputParams < Privy::Internal::Type::BaseModel
      # @!attribute chain_id
      #   A quantity value that can be either a hex string starting with '0x' or a
      #   non-negative integer.
      #
      #   @return [String, Integer]
      required :chain_id, union: -> { Privy::Quantity }

      # @!attribute contract
      #
      #   @return [String]
      required :contract, String

      # @!attribute user_operation
      #   An ERC-4337 user operation.
      #
      #   @return [Privy::Models::UserOperationInput]
      required :user_operation, -> { Privy::UserOperationInput }

      # @!method initialize(chain_id:, contract:, user_operation:)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::EthereumSignUserOperationRpcInputParams} for more details.
      #
      #   Parameters for the EVM `eth_signUserOperation` RPC.
      #
      #   @param chain_id [String, Integer] A quantity value that can be either a hex string starting with '0x' or a non-neg
      #
      #   @param contract [String]
      #
      #   @param user_operation [Privy::Models::UserOperationInput] An ERC-4337 user operation.
    end
  end
end
