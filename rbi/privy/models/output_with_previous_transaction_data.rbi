# typed: strong

module Privy
  module Models
    class OutputWithPreviousTransactionData < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::OutputWithPreviousTransactionData,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :previous_transaction_hash

      sig { returns(Float) }
      attr_accessor :previous_transaction_vout

      # A Spark token output.
      sig { returns(T.nilable(Privy::TokenOutput)) }
      attr_reader :output

      sig { params(output: Privy::TokenOutput::OrHash).void }
      attr_writer :output

      # A Spark token output with its previous transaction data.
      sig do
        params(
          previous_transaction_hash: String,
          previous_transaction_vout: Float,
          output: Privy::TokenOutput::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        previous_transaction_hash:,
        previous_transaction_vout:,
        # A Spark token output.
        output: nil
      )
      end

      sig do
        override.returns(
          {
            previous_transaction_hash: String,
            previous_transaction_vout: Float,
            output: Privy::TokenOutput
          }
        )
      end
      def to_hash
      end
    end
  end
end
