# frozen_string_literal: true

module Privy
  module Models
    class OutputWithPreviousTransactionData < Privy::Internal::Type::BaseModel
      # @!attribute previous_transaction_hash
      #
      #   @return [String]
      required :previous_transaction_hash, String

      # @!attribute previous_transaction_vout
      #
      #   @return [Float]
      required :previous_transaction_vout, Float

      # @!attribute output
      #   A Spark token output.
      #
      #   @return [Privy::Models::TokenOutput, nil]
      optional :output, -> { Privy::TokenOutput }

      # @!method initialize(previous_transaction_hash:, previous_transaction_vout:, output: nil)
      #   A Spark token output with its previous transaction data.
      #
      #   @param previous_transaction_hash [String]
      #
      #   @param previous_transaction_vout [Float]
      #
      #   @param output [Privy::Models::TokenOutput] A Spark token output.
    end
  end
end
