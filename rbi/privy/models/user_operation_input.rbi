# typed: strong

module Privy
  module Models
    class UserOperationInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::UserOperationInput, Privy::Internal::AnyHash)
        end

      # A hex-encoded string prefixed with '0x', capped at 100002 characters (50,000
      # bytes).
      sig { returns(String) }
      attr_accessor :call_data

      # A hex-encoded string prefixed with '0x', capped at 100002 characters (50,000
      # bytes).
      sig { returns(String) }
      attr_accessor :call_gas_limit

      # A hex-encoded string prefixed with '0x', capped at 100002 characters (50,000
      # bytes).
      sig { returns(String) }
      attr_accessor :max_fee_per_gas

      # A hex-encoded string prefixed with '0x', capped at 100002 characters (50,000
      # bytes).
      sig { returns(String) }
      attr_accessor :max_priority_fee_per_gas

      # A hex-encoded string prefixed with '0x', capped at 100002 characters (50,000
      # bytes).
      sig { returns(String) }
      attr_accessor :nonce

      # A hex-encoded string prefixed with '0x', capped at 100002 characters (50,000
      # bytes).
      sig { returns(String) }
      attr_accessor :pre_verification_gas

      sig { returns(String) }
      attr_accessor :sender

      # A hex-encoded string prefixed with '0x', capped at 100002 characters (50,000
      # bytes).
      sig { returns(String) }
      attr_accessor :verification_gas_limit

      sig { returns(T.nilable(String)) }
      attr_reader :paymaster

      sig { params(paymaster: String).void }
      attr_writer :paymaster

      # A hex-encoded string prefixed with '0x', capped at 100002 characters (50,000
      # bytes).
      sig { returns(T.nilable(String)) }
      attr_reader :paymaster_data

      sig { params(paymaster_data: String).void }
      attr_writer :paymaster_data

      # A hex-encoded string prefixed with '0x', capped at 100002 characters (50,000
      # bytes).
      sig { returns(T.nilable(String)) }
      attr_reader :paymaster_post_op_gas_limit

      sig { params(paymaster_post_op_gas_limit: String).void }
      attr_writer :paymaster_post_op_gas_limit

      # A hex-encoded string prefixed with '0x', capped at 100002 characters (50,000
      # bytes).
      sig { returns(T.nilable(String)) }
      attr_reader :paymaster_verification_gas_limit

      sig { params(paymaster_verification_gas_limit: String).void }
      attr_writer :paymaster_verification_gas_limit

      # An ERC-4337 user operation.
      sig do
        params(
          call_data: String,
          call_gas_limit: String,
          max_fee_per_gas: String,
          max_priority_fee_per_gas: String,
          nonce: String,
          pre_verification_gas: String,
          sender: String,
          verification_gas_limit: String,
          paymaster: String,
          paymaster_data: String,
          paymaster_post_op_gas_limit: String,
          paymaster_verification_gas_limit: String
        ).returns(T.attached_class)
      end
      def self.new(
        # A hex-encoded string prefixed with '0x', capped at 100002 characters (50,000
        # bytes).
        call_data:,
        # A hex-encoded string prefixed with '0x', capped at 100002 characters (50,000
        # bytes).
        call_gas_limit:,
        # A hex-encoded string prefixed with '0x', capped at 100002 characters (50,000
        # bytes).
        max_fee_per_gas:,
        # A hex-encoded string prefixed with '0x', capped at 100002 characters (50,000
        # bytes).
        max_priority_fee_per_gas:,
        # A hex-encoded string prefixed with '0x', capped at 100002 characters (50,000
        # bytes).
        nonce:,
        # A hex-encoded string prefixed with '0x', capped at 100002 characters (50,000
        # bytes).
        pre_verification_gas:,
        sender:,
        # A hex-encoded string prefixed with '0x', capped at 100002 characters (50,000
        # bytes).
        verification_gas_limit:,
        paymaster: nil,
        # A hex-encoded string prefixed with '0x', capped at 100002 characters (50,000
        # bytes).
        paymaster_data: nil,
        # A hex-encoded string prefixed with '0x', capped at 100002 characters (50,000
        # bytes).
        paymaster_post_op_gas_limit: nil,
        # A hex-encoded string prefixed with '0x', capped at 100002 characters (50,000
        # bytes).
        paymaster_verification_gas_limit: nil
      )
      end

      sig do
        override.returns(
          {
            call_data: String,
            call_gas_limit: String,
            max_fee_per_gas: String,
            max_priority_fee_per_gas: String,
            nonce: String,
            pre_verification_gas: String,
            sender: String,
            verification_gas_limit: String,
            paymaster: String,
            paymaster_data: String,
            paymaster_post_op_gas_limit: String,
            paymaster_verification_gas_limit: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
