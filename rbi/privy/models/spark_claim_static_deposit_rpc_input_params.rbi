# typed: strong

module Privy
  module Models
    class SparkClaimStaticDepositRpcInputParams < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::SparkClaimStaticDepositRpcInputParams,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(Float) }
      attr_accessor :credit_amount_sats

      sig { returns(String) }
      attr_accessor :signature

      sig { returns(String) }
      attr_accessor :transaction_id

      sig { returns(T.nilable(Float)) }
      attr_reader :output_index

      sig { params(output_index: Float).void }
      attr_writer :output_index

      # Parameters for the Spark `claimStaticDeposit` RPC.
      sig do
        params(
          credit_amount_sats: Float,
          signature: String,
          transaction_id: String,
          output_index: Float
        ).returns(T.attached_class)
      end
      def self.new(
        credit_amount_sats:,
        signature:,
        transaction_id:,
        output_index: nil
      )
      end

      sig do
        override.returns(
          {
            credit_amount_sats: Float,
            signature: String,
            transaction_id: String,
            output_index: Float
          }
        )
      end
      def to_hash
      end
    end
  end
end
