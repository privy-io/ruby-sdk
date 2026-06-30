# frozen_string_literal: true

module Privy
  module Models
    class TronSendTransactionRpcResponseData < Privy::Internal::Type::BaseModel
      # @!attribute caip2
      #   A valid CAIP-2 chain ID (e.g. 'eip155:1').
      #
      #   @return [String]
      required :caip2, String

      # @!attribute hash_
      #
      #   @return [String]
      required :hash_, String, api_name: :hash

      # @!attribute transaction_id
      #
      #   @return [String]
      required :transaction_id, String

      # @!attribute reference_id
      #
      #   @return [String, nil]
      optional :reference_id, String

      # @!method initialize(caip2:, hash_:, transaction_id:, reference_id: nil)
      #   Data returned by the Tron `tron_sendTransaction` RPC.
      #
      #   @param caip2 [String] A valid CAIP-2 chain ID (e.g. 'eip155:1').
      #
      #   @param hash_ [String]
      #
      #   @param transaction_id [String]
      #
      #   @param reference_id [String]
    end
  end
end
