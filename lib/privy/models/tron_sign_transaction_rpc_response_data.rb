# frozen_string_literal: true

module Privy
  module Models
    class TronSignTransactionRpcResponseData < Privy::Internal::Type::BaseModel
      # @!attribute encoding
      #
      #   @return [Symbol, Privy::Models::TronSignTransactionRpcResponseData::Encoding]
      required :encoding, enum: -> { Privy::TronSignTransactionRpcResponseData::Encoding }

      # @!attribute signed_transaction
      #
      #   @return [String]
      required :signed_transaction, String

      # @!method initialize(encoding:, signed_transaction:)
      #   Data returned by the Tron `tron_signTransaction` RPC.
      #
      #   @param encoding [Symbol, Privy::Models::TronSignTransactionRpcResponseData::Encoding]
      #   @param signed_transaction [String]

      # @see Privy::Models::TronSignTransactionRpcResponseData#encoding
      module Encoding
        extend Privy::Internal::Type::Enum

        HEX = :hex

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
