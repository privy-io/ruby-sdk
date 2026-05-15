# typed: strong

module Privy
  module Models
    class SparkGetClaimStaticDepositQuoteRpcResponseData < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::SparkGetClaimStaticDepositQuoteRpcResponseData,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(Float) }
      attr_accessor :credit_amount_sats

      sig { returns(String) }
      attr_accessor :network

      sig { returns(Float) }
      attr_accessor :output_index

      sig { returns(String) }
      attr_accessor :signature

      sig { returns(String) }
      attr_accessor :transaction_id

      # Data returned by the Spark `getClaimStaticDepositQuote` RPC.
      sig do
        params(
          credit_amount_sats: Float,
          network: String,
          output_index: Float,
          signature: String,
          transaction_id: String
        ).returns(T.attached_class)
      end
      def self.new(
        credit_amount_sats:,
        network:,
        output_index:,
        signature:,
        transaction_id:
      )
      end

      sig do
        override.returns(
          {
            credit_amount_sats: Float,
            network: String,
            output_index: Float,
            signature: String,
            transaction_id: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
