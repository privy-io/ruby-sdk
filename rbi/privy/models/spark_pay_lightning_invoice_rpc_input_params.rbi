# typed: strong

module Privy
  module Models
    class SparkPayLightningInvoiceRpcInputParams < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::SparkPayLightningInvoiceRpcInputParams,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :invoice

      sig { returns(Float) }
      attr_accessor :max_fee_sats

      sig { returns(T.nilable(Float)) }
      attr_reader :amount_sats_to_send

      sig { params(amount_sats_to_send: Float).void }
      attr_writer :amount_sats_to_send

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :prefer_spark

      sig { params(prefer_spark: T::Boolean).void }
      attr_writer :prefer_spark

      # Parameters for the Spark `payLightningInvoice` RPC.
      sig do
        params(
          invoice: String,
          max_fee_sats: Float,
          amount_sats_to_send: Float,
          prefer_spark: T::Boolean
        ).returns(T.attached_class)
      end
      def self.new(
        invoice:,
        max_fee_sats:,
        amount_sats_to_send: nil,
        prefer_spark: nil
      )
      end

      sig do
        override.returns(
          {
            invoice: String,
            max_fee_sats: Float,
            amount_sats_to_send: Float,
            prefer_spark: T::Boolean
          }
        )
      end
      def to_hash
      end
    end
  end
end
