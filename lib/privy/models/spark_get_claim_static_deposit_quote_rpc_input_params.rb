# frozen_string_literal: true

module Privy
  module Models
    class SparkGetClaimStaticDepositQuoteRpcInputParams < Privy::Internal::Type::BaseModel
      # @!attribute transaction_id
      #
      #   @return [String]
      required :transaction_id, String

      # @!attribute output_index
      #
      #   @return [Float, nil]
      optional :output_index, Float

      # @!method initialize(transaction_id:, output_index: nil)
      #   Parameters for the Spark `getClaimStaticDepositQuote` RPC.
      #
      #   @param transaction_id [String]
      #   @param output_index [Float]
    end
  end
end
