# frozen_string_literal: true

module Privy
  module Models
    class NearSignTransactionRpcRequestBodyParams < Privy::Internal::Type::BaseModel
      # @!attribute transaction
      #   A non-empty, base64-encoded Borsh NEAR Transaction.
      #
      #   @return [String]
      required :transaction, String

      # @!method initialize(transaction:)
      #   Parameters for the NEAR `near_signTransaction` RPC.
      #
      #   @param transaction [String] A non-empty, base64-encoded Borsh NEAR Transaction.
    end
  end
end
