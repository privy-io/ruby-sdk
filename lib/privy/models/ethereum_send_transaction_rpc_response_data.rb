# frozen_string_literal: true

module Privy
  module Models
    class EthereumSendTransactionRpcResponseData < Privy::Internal::Type::BaseModel
      # @!attribute caip2
      #   A valid CAIP-2 chain ID (e.g. 'eip155:1').
      #
      #   @return [String]
      required :caip2, String

      # @!attribute hash_
      #
      #   @return [String]
      required :hash_, String, api_name: :hash

      # @!attribute reference_id
      #
      #   @return [String, nil]
      optional :reference_id, String, nil?: true

      # @!attribute transaction_id
      #
      #   @return [String, nil]
      optional :transaction_id, String

      # @!attribute transaction_request
      #   An unsigned Ethereum transaction object. Supports standard EVM transaction types
      #   (0, 1, 2, 4) and Tempo transactions (type 118).
      #
      #   @return [Privy::Models::UnsignedStandardEthereumTransaction, Privy::Models::UnsignedTempoTransaction, nil]
      optional :transaction_request, union: -> { Privy::UnsignedEthereumTransaction }

      # @!attribute user_operation_hash
      #
      #   @return [String, nil]
      optional :user_operation_hash, String

      # @!method initialize(caip2:, hash_:, reference_id: nil, transaction_id: nil, transaction_request: nil, user_operation_hash: nil)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::EthereumSendTransactionRpcResponseData} for more details.
      #
      #   Data returned by the EVM `eth_sendTransaction` RPC.
      #
      #   @param caip2 [String] A valid CAIP-2 chain ID (e.g. 'eip155:1').
      #
      #   @param hash_ [String]
      #
      #   @param reference_id [String, nil]
      #
      #   @param transaction_id [String]
      #
      #   @param transaction_request [Privy::Models::UnsignedStandardEthereumTransaction, Privy::Models::UnsignedTempoTransaction] An unsigned Ethereum transaction object. Supports standard EVM transaction types
      #
      #   @param user_operation_hash [String]
    end
  end
end
