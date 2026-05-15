# frozen_string_literal: true

module Privy
  module Models
    class SparkGetClaimStaticDepositQuoteRpcResponseData < Privy::Internal::Type::BaseModel
      # @!attribute credit_amount_sats
      #
      #   @return [Float]
      required :credit_amount_sats, Float

      # @!attribute network
      #
      #   @return [String]
      required :network, String

      # @!attribute output_index
      #
      #   @return [Float]
      required :output_index, Float

      # @!attribute signature
      #
      #   @return [String]
      required :signature, String

      # @!attribute transaction_id
      #
      #   @return [String]
      required :transaction_id, String

      # @!method initialize(credit_amount_sats:, network:, output_index:, signature:, transaction_id:)
      #   Data returned by the Spark `getClaimStaticDepositQuote` RPC.
      #
      #   @param credit_amount_sats [Float]
      #   @param network [String]
      #   @param output_index [Float]
      #   @param signature [String]
      #   @param transaction_id [String]
    end
  end
end
