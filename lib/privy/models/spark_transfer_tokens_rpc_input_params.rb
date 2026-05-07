# frozen_string_literal: true

module Privy
  module Models
    class SparkTransferTokensRpcInputParams < Privy::Internal::Type::BaseModel
      # @!attribute receiver_spark_address
      #
      #   @return [String]
      required :receiver_spark_address, String

      # @!attribute token_amount
      #
      #   @return [Float]
      required :token_amount, Float

      # @!attribute token_identifier
      #
      #   @return [String]
      required :token_identifier, String

      # @!attribute output_selection_strategy
      #   Strategy for selecting outputs in a Spark token transfer.
      #
      #   @return [Symbol, Privy::Models::SparkOutputSelectionStrategy, nil]
      optional :output_selection_strategy, enum: -> { Privy::SparkOutputSelectionStrategy }

      # @!attribute selected_outputs
      #
      #   @return [Array<Privy::Models::OutputWithPreviousTransactionData>, nil]
      optional :selected_outputs,
               -> { Privy::Internal::Type::ArrayOf[Privy::OutputWithPreviousTransactionData] }

      # @!method initialize(receiver_spark_address:, token_amount:, token_identifier:, output_selection_strategy: nil, selected_outputs: nil)
      #   Parameters for the Spark `transferTokens` RPC.
      #
      #   @param receiver_spark_address [String]
      #
      #   @param token_amount [Float]
      #
      #   @param token_identifier [String]
      #
      #   @param output_selection_strategy [Symbol, Privy::Models::SparkOutputSelectionStrategy] Strategy for selecting outputs in a Spark token transfer.
      #
      #   @param selected_outputs [Array<Privy::Models::OutputWithPreviousTransactionData>]
    end
  end
end
