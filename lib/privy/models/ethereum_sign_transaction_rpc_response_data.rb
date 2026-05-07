# frozen_string_literal: true

module Privy
  module Models
    class EthereumSignTransactionRpcResponseData < Privy::Internal::Type::BaseModel
      # @!attribute encoding
      #
      #   @return [Symbol, Privy::Models::EthereumSignTransactionRpcResponseData::Encoding]
      required :encoding, enum: -> { Privy::EthereumSignTransactionRpcResponseData::Encoding }

      # @!attribute signed_transaction
      #
      #   @return [String]
      required :signed_transaction, String

      # @!method initialize(encoding:, signed_transaction:)
      #   Data returned by the EVM `eth_signTransaction` RPC.
      #
      #   @param encoding [Symbol, Privy::Models::EthereumSignTransactionRpcResponseData::Encoding]
      #   @param signed_transaction [String]

      # @see Privy::Models::EthereumSignTransactionRpcResponseData#encoding
      module Encoding
        extend Privy::Internal::Type::Enum

        RLP = :rlp

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
