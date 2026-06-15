# frozen_string_literal: true

module Privy
  module Models
    class TronSendTransactionRpcResponseData < Privy::Internal::Type::BaseModel
      # @!attribute caip2
      #   A valid CAIP-2 chain ID (e.g. 'eip155:1').
      #
      #   @return [String]
      required :caip2, String

      # @!attribute transaction_id
      #
      #   @return [String]
      required :transaction_id, String

      # @!method initialize(caip2:, transaction_id:)
      #   Data returned by the Tron `tron_sendTransaction` RPC.
      #
      #   @param caip2 [String] A valid CAIP-2 chain ID (e.g. 'eip155:1').
      #
      #   @param transaction_id [String]
    end
  end
end
