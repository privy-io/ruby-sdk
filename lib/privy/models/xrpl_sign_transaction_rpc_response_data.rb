# frozen_string_literal: true

module Privy
  module Models
    class XrplSignTransactionRpcResponseData < Privy::Internal::Type::BaseModel
      # @!attribute encoding
      #
      #   @return [Symbol, Privy::Models::XrplSignTransactionRpcResponseData::Encoding]
      required :encoding, enum: -> { Privy::XrplSignTransactionRpcResponseData::Encoding }

      # @!attribute signed_transaction
      #
      #   @return [String]
      required :signed_transaction, String

      # @!attribute txn_signature
      #
      #   @return [String]
      required :txn_signature, String

      # @!method initialize(encoding:, signed_transaction:, txn_signature:)
      #   Data returned by the XRPL `xrpl_signTransaction` RPC.
      #
      #   @param encoding [Symbol, Privy::Models::XrplSignTransactionRpcResponseData::Encoding]
      #   @param signed_transaction [String]
      #   @param txn_signature [String]

      # @see Privy::Models::XrplSignTransactionRpcResponseData#encoding
      module Encoding
        extend Privy::Internal::Type::Enum

        HEX = :hex

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
