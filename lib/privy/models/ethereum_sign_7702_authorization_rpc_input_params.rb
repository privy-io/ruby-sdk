# frozen_string_literal: true

module Privy
  module Models
    class EthereumSign7702AuthorizationRpcInputParams < Privy::Internal::Type::BaseModel
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

      # @!attribute executor
      #
      #   @return [Symbol, Privy::Models::EthereumSign7702AuthorizationRpcInputParams::Executor, nil]
      optional :executor, enum: -> { Privy::EthereumSign7702AuthorizationRpcInputParams::Executor }

      # @!attribute nonce
      #   A quantity value that can be either a hex string starting with '0x' or a
      #   non-negative integer.
      #
      #   @return [String, Integer, nil]
      optional :nonce, union: -> { Privy::Quantity }

      # @!method initialize(chain_id:, contract:, executor: nil, nonce: nil)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::EthereumSign7702AuthorizationRpcInputParams} for more details.
      #
      #   Parameters for the EVM `eth_sign7702Authorization` RPC.
      #
      #   @param chain_id [String, Integer] A quantity value that can be either a hex string starting with '0x' or a non-neg
      #
      #   @param contract [String]
      #
      #   @param executor [Symbol, Privy::Models::EthereumSign7702AuthorizationRpcInputParams::Executor]
      #
      #   @param nonce [String, Integer] A quantity value that can be either a hex string starting with '0x' or a non-neg

      # @see Privy::Models::EthereumSign7702AuthorizationRpcInputParams#executor
      module Executor
        extend Privy::Internal::Type::Enum

        SELF = :self

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
