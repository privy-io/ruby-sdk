# typed: strong

module Privy
  module Models
    class SparkTransferRpcInputParams < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::SparkTransferRpcInputParams, Privy::Internal::AnyHash)
        end

      sig { returns(Float) }
      attr_accessor :amount_sats

      sig { returns(String) }
      attr_accessor :receiver_spark_address

      # Parameters for the Spark `transfer` RPC.
      sig do
        params(amount_sats: Float, receiver_spark_address: String).returns(
          T.attached_class
        )
      end
      def self.new(amount_sats:, receiver_spark_address:)
      end

      sig do
        override.returns({ amount_sats: Float, receiver_spark_address: String })
      end
      def to_hash
      end
    end
  end
end
