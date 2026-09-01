# frozen_string_literal: true

module Privy
  module Models
    class NearSignTransactionRpcResponseData < Privy::Internal::Type::BaseModel
      # @!attribute encoding
      #
      #   @return [Symbol, Privy::Models::NearSignTransactionRpcResponseData::Encoding]
      required :encoding, enum: -> { Privy::NearSignTransactionRpcResponseData::Encoding }

      # @!attribute signed_transaction
      #   A non-empty, base64-encoded NEAR Ed25519 SignedTransaction.
      #
      #   @return [String]
      required :signed_transaction, String

      # @!method initialize(encoding:, signed_transaction:)
      #   Data returned by the NEAR `near_signTransaction` RPC.
      #
      #   @param encoding [Symbol, Privy::Models::NearSignTransactionRpcResponseData::Encoding]
      #
      #   @param signed_transaction [String] A non-empty, base64-encoded NEAR Ed25519 SignedTransaction.

      # @see Privy::Models::NearSignTransactionRpcResponseData#encoding
      module Encoding
        extend Privy::Internal::Type::Enum

        BASE64 = :base64

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
