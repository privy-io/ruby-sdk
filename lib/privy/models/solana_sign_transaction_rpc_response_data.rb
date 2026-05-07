# frozen_string_literal: true

module Privy
  module Models
    class SolanaSignTransactionRpcResponseData < Privy::Internal::Type::BaseModel
      # @!attribute encoding
      #
      #   @return [Symbol, Privy::Models::SolanaSignTransactionRpcResponseData::Encoding]
      required :encoding, enum: -> { Privy::SolanaSignTransactionRpcResponseData::Encoding }

      # @!attribute signed_transaction
      #
      #   @return [String]
      required :signed_transaction, String

      # @!method initialize(encoding:, signed_transaction:)
      #   Data returned by the SVM `signTransaction` RPC.
      #
      #   @param encoding [Symbol, Privy::Models::SolanaSignTransactionRpcResponseData::Encoding]
      #   @param signed_transaction [String]

      # @see Privy::Models::SolanaSignTransactionRpcResponseData#encoding
      module Encoding
        extend Privy::Internal::Type::Enum

        BASE64 = :base64

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
