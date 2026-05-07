# typed: strong

module Privy
  module Models
    class SparkCreateLightningInvoiceRpcInputParams < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::SparkCreateLightningInvoiceRpcInputParams,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(Float) }
      attr_accessor :amount_sats

      sig { returns(T.nilable(String)) }
      attr_reader :description_hash

      sig { params(description_hash: String).void }
      attr_writer :description_hash

      sig { returns(T.nilable(Float)) }
      attr_reader :expiry_seconds

      sig { params(expiry_seconds: Float).void }
      attr_writer :expiry_seconds

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :include_spark_address

      sig { params(include_spark_address: T::Boolean).void }
      attr_writer :include_spark_address

      sig { returns(T.nilable(String)) }
      attr_reader :memo

      sig { params(memo: String).void }
      attr_writer :memo

      sig { returns(T.nilable(String)) }
      attr_reader :receiver_identity_pubkey

      sig { params(receiver_identity_pubkey: String).void }
      attr_writer :receiver_identity_pubkey

      # Parameters for the Spark `createLightningInvoice` RPC.
      sig do
        params(
          amount_sats: Float,
          description_hash: String,
          expiry_seconds: Float,
          include_spark_address: T::Boolean,
          memo: String,
          receiver_identity_pubkey: String
        ).returns(T.attached_class)
      end
      def self.new(
        amount_sats:,
        description_hash: nil,
        expiry_seconds: nil,
        include_spark_address: nil,
        memo: nil,
        receiver_identity_pubkey: nil
      )
      end

      sig do
        override.returns(
          {
            amount_sats: Float,
            description_hash: String,
            expiry_seconds: Float,
            include_spark_address: T::Boolean,
            memo: String,
            receiver_identity_pubkey: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
