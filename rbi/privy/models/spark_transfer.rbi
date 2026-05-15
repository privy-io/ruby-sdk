# typed: strong

module Privy
  module Models
    class SparkTransfer < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Privy::SparkTransfer, Privy::Internal::AnyHash) }

      sig { returns(String) }
      attr_accessor :id

      sig { returns(T::Array[Privy::SparkTransferLeaf]) }
      attr_accessor :leaves

      sig { returns(String) }
      attr_accessor :receiver_identity_public_key

      sig { returns(String) }
      attr_accessor :sender_identity_public_key

      sig { returns(String) }
      attr_accessor :status

      sig { returns(Float) }
      attr_accessor :total_value

      sig { returns(String) }
      attr_accessor :transfer_direction

      sig { returns(String) }
      attr_accessor :type

      sig { returns(T.nilable(String)) }
      attr_reader :created_time

      sig { params(created_time: String).void }
      attr_writer :created_time

      sig { returns(T.nilable(String)) }
      attr_reader :expiry_time

      sig { params(expiry_time: String).void }
      attr_writer :expiry_time

      sig { returns(T.nilable(String)) }
      attr_reader :updated_time

      sig { params(updated_time: String).void }
      attr_writer :updated_time

      # A Spark transfer.
      sig do
        params(
          id: String,
          leaves: T::Array[Privy::SparkTransferLeaf::OrHash],
          receiver_identity_public_key: String,
          sender_identity_public_key: String,
          status: String,
          total_value: Float,
          transfer_direction: String,
          type: String,
          created_time: String,
          expiry_time: String,
          updated_time: String
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        leaves:,
        receiver_identity_public_key:,
        sender_identity_public_key:,
        status:,
        total_value:,
        transfer_direction:,
        type:,
        created_time: nil,
        expiry_time: nil,
        updated_time: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            leaves: T::Array[Privy::SparkTransferLeaf],
            receiver_identity_public_key: String,
            sender_identity_public_key: String,
            status: String,
            total_value: Float,
            transfer_direction: String,
            type: String,
            created_time: String,
            expiry_time: String,
            updated_time: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
