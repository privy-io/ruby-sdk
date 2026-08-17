# frozen_string_literal: true

module Privy
  module Models
    class XrplSignTransactionRpcInputParams < Privy::Internal::Type::BaseModel
      # @!attribute encoding
      #
      #   @return [Symbol, Privy::Models::XrplSignTransactionRpcInputParams::Encoding]
      required :encoding, enum: -> { Privy::XrplSignTransactionRpcInputParams::Encoding }

      # @!attribute transaction
      #
      #   @return [String]
      required :transaction, String

      # @!method initialize(encoding:, transaction:)
      #   Parameters for the XRPL `xrpl_signTransaction` RPC.
      #
      #   @param encoding [Symbol, Privy::Models::XrplSignTransactionRpcInputParams::Encoding]
      #   @param transaction [String]

      # @see Privy::Models::XrplSignTransactionRpcInputParams#encoding
      module Encoding
        extend Privy::Internal::Type::Enum

        HEX = :hex

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
