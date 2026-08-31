# frozen_string_literal: true

module Privy
  module Models
    class AptosSignTransactionRpcInputParams < Privy::Internal::Type::BaseModel
      # @!attribute transaction
      #   A non-empty, 0x-prefixed, even-length BCS hex string.
      #
      #   @return [String]
      required :transaction, String

      # @!method initialize(transaction:)
      #   Parameters for the Aptos `aptos_signTransaction` RPC.
      #
      #   @param transaction [String] A non-empty, 0x-prefixed, even-length BCS hex string.
    end
  end
end
