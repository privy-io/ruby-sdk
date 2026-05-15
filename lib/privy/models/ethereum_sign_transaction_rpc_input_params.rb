# frozen_string_literal: true

module Privy
  module Models
    class EthereumSignTransactionRpcInputParams < Privy::Internal::Type::BaseModel
      # @!attribute transaction
      #   An unsigned Ethereum transaction object. Supports standard EVM transaction types
      #   (0, 1, 2, 4) and Tempo transactions (type 118).
      #
      #   @return [Privy::Models::UnsignedStandardEthereumTransaction, Privy::Models::UnsignedTempoTransaction]
      required :transaction, union: -> { Privy::UnsignedEthereumTransaction }

      # @!method initialize(transaction:)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::EthereumSignTransactionRpcInputParams} for more details.
      #
      #   Parameters for the EVM `eth_signTransaction` RPC.
      #
      #   @param transaction [Privy::Models::UnsignedStandardEthereumTransaction, Privy::Models::UnsignedTempoTransaction] An unsigned Ethereum transaction object. Supports standard EVM transaction types
    end
  end
end
