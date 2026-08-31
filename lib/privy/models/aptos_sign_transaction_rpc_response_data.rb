# frozen_string_literal: true

module Privy
  module Models
    class AptosSignTransactionRpcResponseData < Privy::Internal::Type::BaseModel
      # @!attribute encoding
      #
      #   @return [Symbol, Privy::Models::AptosSignTransactionRpcResponseData::Encoding]
      required :encoding, enum: -> { Privy::AptosSignTransactionRpcResponseData::Encoding }

      # @!attribute signed_transaction
      #   A non-empty, 0x-prefixed, even-length BCS legacy Ed25519 SignedTransaction.
      #
      #   @return [String]
      required :signed_transaction, String

      # @!method initialize(encoding:, signed_transaction:)
      #   Data returned by the Aptos `aptos_signTransaction` RPC.
      #
      #   @param encoding [Symbol, Privy::Models::AptosSignTransactionRpcResponseData::Encoding]
      #
      #   @param signed_transaction [String] A non-empty, 0x-prefixed, even-length BCS legacy Ed25519 SignedTransaction.

      # @see Privy::Models::AptosSignTransactionRpcResponseData#encoding
      module Encoding
        extend Privy::Internal::Type::Enum

        HEX = :hex

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
