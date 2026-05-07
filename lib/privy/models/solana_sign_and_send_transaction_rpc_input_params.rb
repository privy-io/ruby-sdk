# frozen_string_literal: true

module Privy
  module Models
    class SolanaSignAndSendTransactionRpcInputParams < Privy::Internal::Type::BaseModel
      # @!attribute encoding
      #
      #   @return [Symbol, Privy::Models::SolanaSignAndSendTransactionRpcInputParams::Encoding]
      required :encoding, enum: -> { Privy::SolanaSignAndSendTransactionRpcInputParams::Encoding }

      # @!attribute transaction
      #
      #   @return [String]
      required :transaction, String

      # @!method initialize(encoding:, transaction:)
      #   Parameters for the SVM `signAndSendTransaction` RPC.
      #
      #   @param encoding [Symbol, Privy::Models::SolanaSignAndSendTransactionRpcInputParams::Encoding]
      #   @param transaction [String]

      # @see Privy::Models::SolanaSignAndSendTransactionRpcInputParams#encoding
      module Encoding
        extend Privy::Internal::Type::Enum

        BASE64 = :base64

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
