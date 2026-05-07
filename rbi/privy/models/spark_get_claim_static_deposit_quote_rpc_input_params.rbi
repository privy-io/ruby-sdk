# typed: strong

module Privy
  module Models
    class SparkGetClaimStaticDepositQuoteRpcInputParams < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::SparkGetClaimStaticDepositQuoteRpcInputParams,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :transaction_id

      sig { returns(T.nilable(Float)) }
      attr_reader :output_index

      sig { params(output_index: Float).void }
      attr_writer :output_index

      # Parameters for the Spark `getClaimStaticDepositQuote` RPC.
      sig do
        params(transaction_id: String, output_index: Float).returns(
          T.attached_class
        )
      end
      def self.new(transaction_id:, output_index: nil)
      end

      sig { override.returns({ transaction_id: String, output_index: Float }) }
      def to_hash
      end
    end
  end
end
