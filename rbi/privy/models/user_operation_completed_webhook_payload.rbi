# typed: strong

module Privy
  module Models
    class UserOperationCompletedWebhookPayload < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::UserOperationCompletedWebhookPayload,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :actual_gas_cost

      sig { returns(String) }
      attr_accessor :actual_gas_used

      sig { returns(Float) }
      attr_accessor :block_number

      sig { returns(String) }
      attr_accessor :caip2

      sig { returns(Float) }
      attr_accessor :log_index

      sig { returns(String) }
      attr_accessor :nonce

      sig { returns(T.nilable(String)) }
      attr_accessor :paymaster

      sig { returns(String) }
      attr_accessor :sender

      sig { returns(T::Boolean) }
      attr_accessor :success

      sig { returns(String) }
      attr_accessor :transaction_hash

      # The type of webhook event.
      sig do
        returns(Privy::UserOperationCompletedWebhookPayload::Type::TaggedSymbol)
      end
      attr_accessor :type

      sig { returns(String) }
      attr_accessor :user_op_hash

      # Payload for the user_operation.completed webhook event.
      sig do
        params(
          actual_gas_cost: String,
          actual_gas_used: String,
          block_number: Float,
          caip2: String,
          log_index: Float,
          nonce: String,
          paymaster: T.nilable(String),
          sender: String,
          success: T::Boolean,
          transaction_hash: String,
          type: Privy::UserOperationCompletedWebhookPayload::Type::OrSymbol,
          user_op_hash: String
        ).returns(T.attached_class)
      end
      def self.new(
        actual_gas_cost:,
        actual_gas_used:,
        block_number:,
        caip2:,
        log_index:,
        nonce:,
        paymaster:,
        sender:,
        success:,
        transaction_hash:,
        # The type of webhook event.
        type:,
        user_op_hash:
      )
      end

      sig do
        override.returns(
          {
            actual_gas_cost: String,
            actual_gas_used: String,
            block_number: Float,
            caip2: String,
            log_index: Float,
            nonce: String,
            paymaster: T.nilable(String),
            sender: String,
            success: T::Boolean,
            transaction_hash: String,
            type:
              Privy::UserOperationCompletedWebhookPayload::Type::TaggedSymbol,
            user_op_hash: String
          }
        )
      end
      def to_hash
      end

      # The type of webhook event.
      module Type
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::UserOperationCompletedWebhookPayload::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        USER_OPERATION_COMPLETED =
          T.let(
            :"user_operation.completed",
            Privy::UserOperationCompletedWebhookPayload::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::UserOperationCompletedWebhookPayload::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
