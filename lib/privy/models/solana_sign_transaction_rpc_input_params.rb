# frozen_string_literal: true

module Privy
  module Models
    class SolanaSignTransactionRpcInputParams < Privy::Internal::Type::BaseModel
      # @!attribute encoding
      #
      #   @return [Symbol, Privy::Models::SolanaSignTransactionRpcInputParams::Encoding]
      required :encoding, enum: -> { Privy::SolanaSignTransactionRpcInputParams::Encoding }

      # @!attribute transaction
      #
      #   @return [String]
      required :transaction, String

      # @!method initialize(encoding:, transaction:)
      #   Parameters for the SVM `signTransaction` RPC.
      #
      #   @param encoding [Symbol, Privy::Models::SolanaSignTransactionRpcInputParams::Encoding]
      #   @param transaction [String]

      # @see Privy::Models::SolanaSignTransactionRpcInputParams#encoding
      module Encoding
        extend Privy::Internal::Type::Enum

        BASE64 = :base64

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
