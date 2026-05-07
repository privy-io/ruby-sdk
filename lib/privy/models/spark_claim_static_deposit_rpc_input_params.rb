# frozen_string_literal: true

module Privy
  module Models
    class SparkClaimStaticDepositRpcInputParams < Privy::Internal::Type::BaseModel
      # @!attribute credit_amount_sats
      #
      #   @return [Float]
      required :credit_amount_sats, Float

      # @!attribute signature
      #
      #   @return [String]
      required :signature, String

      # @!attribute transaction_id
      #
      #   @return [String]
      required :transaction_id, String

      # @!attribute output_index
      #
      #   @return [Float, nil]
      optional :output_index, Float

      # @!method initialize(credit_amount_sats:, signature:, transaction_id:, output_index: nil)
      #   Parameters for the Spark `claimStaticDeposit` RPC.
      #
      #   @param credit_amount_sats [Float]
      #   @param signature [String]
      #   @param transaction_id [String]
      #   @param output_index [Float]
    end
  end
end
