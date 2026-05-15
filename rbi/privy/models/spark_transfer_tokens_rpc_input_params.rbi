# typed: strong

module Privy
  module Models
    class SparkTransferTokensRpcInputParams < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::SparkTransferTokensRpcInputParams,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :receiver_spark_address

      sig { returns(Float) }
      attr_accessor :token_amount

      sig { returns(String) }
      attr_accessor :token_identifier

      # Strategy for selecting outputs in a Spark token transfer.
      sig { returns(T.nilable(Privy::SparkOutputSelectionStrategy::OrSymbol)) }
      attr_reader :output_selection_strategy

      sig do
        params(
          output_selection_strategy:
            Privy::SparkOutputSelectionStrategy::OrSymbol
        ).void
      end
      attr_writer :output_selection_strategy

      sig do
        returns(T.nilable(T::Array[Privy::OutputWithPreviousTransactionData]))
      end
      attr_reader :selected_outputs

      sig do
        params(
          selected_outputs:
            T::Array[Privy::OutputWithPreviousTransactionData::OrHash]
        ).void
      end
      attr_writer :selected_outputs

      # Parameters for the Spark `transferTokens` RPC.
      sig do
        params(
          receiver_spark_address: String,
          token_amount: Float,
          token_identifier: String,
          output_selection_strategy:
            Privy::SparkOutputSelectionStrategy::OrSymbol,
          selected_outputs:
            T::Array[Privy::OutputWithPreviousTransactionData::OrHash]
        ).returns(T.attached_class)
      end
      def self.new(
        receiver_spark_address:,
        token_amount:,
        token_identifier:,
        # Strategy for selecting outputs in a Spark token transfer.
        output_selection_strategy: nil,
        selected_outputs: nil
      )
      end

      sig do
        override.returns(
          {
            receiver_spark_address: String,
            token_amount: Float,
            token_identifier: String,
            output_selection_strategy:
              Privy::SparkOutputSelectionStrategy::OrSymbol,
            selected_outputs: T::Array[Privy::OutputWithPreviousTransactionData]
          }
        )
      end
      def to_hash
      end
    end
  end
end
