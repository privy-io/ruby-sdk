# typed: strong

module Privy
  module Models
    class SparkLightningSendRequest < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::SparkLightningSendRequest, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :id

      sig { returns(String) }
      attr_accessor :created_at

      sig { returns(String) }
      attr_accessor :encoded_invoice

      # The fee for a Spark Lightning payment.
      sig { returns(Privy::SparkLightningFee) }
      attr_reader :fee

      sig { params(fee: Privy::SparkLightningFee::OrHash).void }
      attr_writer :fee

      sig { returns(String) }
      attr_accessor :idempotency_key

      sig { returns(String) }
      attr_accessor :network

      sig { returns(String) }
      attr_accessor :status

      sig { returns(String) }
      attr_accessor :typename

      sig { returns(String) }
      attr_accessor :updated_at

      sig { returns(T.nilable(String)) }
      attr_reader :payment_preimage

      sig { params(payment_preimage: String).void }
      attr_writer :payment_preimage

      sig { returns(T.nilable(T.anything)) }
      attr_reader :transfer

      sig { params(transfer: T.anything).void }
      attr_writer :transfer

      # A Spark Lightning send request.
      sig do
        params(
          id: String,
          created_at: String,
          encoded_invoice: String,
          fee: Privy::SparkLightningFee::OrHash,
          idempotency_key: String,
          network: String,
          status: String,
          typename: String,
          updated_at: String,
          payment_preimage: String,
          transfer: T.anything
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        created_at:,
        encoded_invoice:,
        # The fee for a Spark Lightning payment.
        fee:,
        idempotency_key:,
        network:,
        status:,
        typename:,
        updated_at:,
        payment_preimage: nil,
        transfer: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            created_at: String,
            encoded_invoice: String,
            fee: Privy::SparkLightningFee,
            idempotency_key: String,
            network: String,
            status: String,
            typename: String,
            updated_at: String,
            payment_preimage: String,
            transfer: T.anything
          }
        )
      end
      def to_hash
      end
    end
  end
end
