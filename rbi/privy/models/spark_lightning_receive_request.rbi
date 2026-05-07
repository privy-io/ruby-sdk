# typed: strong

module Privy
  module Models
    class SparkLightningReceiveRequest < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::SparkLightningReceiveRequest, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :id

      sig { returns(String) }
      attr_accessor :created_at

      sig { returns(String) }
      attr_accessor :network

      sig { returns(String) }
      attr_accessor :status

      sig { returns(String) }
      attr_accessor :typename

      sig { returns(String) }
      attr_accessor :updated_at

      sig { returns(T.nilable(T.anything)) }
      attr_reader :invoice

      sig { params(invoice: T.anything).void }
      attr_writer :invoice

      sig { returns(T.nilable(String)) }
      attr_reader :payment_preimage

      sig { params(payment_preimage: String).void }
      attr_writer :payment_preimage

      sig { returns(T.nilable(String)) }
      attr_reader :receiver_identity_public_key

      sig { params(receiver_identity_public_key: String).void }
      attr_writer :receiver_identity_public_key

      sig { returns(T.nilable(T.anything)) }
      attr_reader :transfer

      sig { params(transfer: T.anything).void }
      attr_writer :transfer

      # A Spark Lightning receive request.
      sig do
        params(
          id: String,
          created_at: String,
          network: String,
          status: String,
          typename: String,
          updated_at: String,
          invoice: T.anything,
          payment_preimage: String,
          receiver_identity_public_key: String,
          transfer: T.anything
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        created_at:,
        network:,
        status:,
        typename:,
        updated_at:,
        invoice: nil,
        payment_preimage: nil,
        receiver_identity_public_key: nil,
        transfer: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            created_at: String,
            network: String,
            status: String,
            typename: String,
            updated_at: String,
            invoice: T.anything,
            payment_preimage: String,
            receiver_identity_public_key: String,
            transfer: T.anything
          }
        )
      end
      def to_hash
      end
    end
  end
end
