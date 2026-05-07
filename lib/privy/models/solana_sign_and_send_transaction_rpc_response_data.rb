# frozen_string_literal: true

module Privy
  module Models
    class SolanaSignAndSendTransactionRpcResponseData < Privy::Internal::Type::BaseModel
      # @!attribute caip2
      #   A valid CAIP-2 chain ID (e.g. 'eip155:1').
      #
      #   @return [String]
      required :caip2, String

      # @!attribute hash_
      #
      #   @return [String]
      required :hash_, String, api_name: :hash

      # @!attribute reference_id
      #
      #   @return [String, nil]
      optional :reference_id, String, nil?: true

      # @!attribute transaction_id
      #
      #   @return [String, nil]
      optional :transaction_id, String

      # @!method initialize(caip2:, hash_:, reference_id: nil, transaction_id: nil)
      #   Data returned by the SVM `signAndSendTransaction` RPC.
      #
      #   @param caip2 [String] A valid CAIP-2 chain ID (e.g. 'eip155:1').
      #
      #   @param hash_ [String]
      #
      #   @param reference_id [String, nil]
      #
      #   @param transaction_id [String]
    end
  end
end
