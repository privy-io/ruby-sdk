# frozen_string_literal: true

module Privy
  module Models
    class UserOperationCompletedWebhookPayload < Privy::Internal::Type::BaseModel
      # @!attribute actual_gas_cost
      #
      #   @return [String]
      required :actual_gas_cost, String

      # @!attribute actual_gas_used
      #
      #   @return [String]
      required :actual_gas_used, String

      # @!attribute block_number
      #
      #   @return [Float]
      required :block_number, Float

      # @!attribute caip2
      #
      #   @return [String]
      required :caip2, String

      # @!attribute log_index
      #
      #   @return [Float]
      required :log_index, Float

      # @!attribute nonce
      #
      #   @return [String]
      required :nonce, String

      # @!attribute paymaster
      #
      #   @return [String, nil]
      required :paymaster, String, nil?: true

      # @!attribute sender
      #
      #   @return [String]
      required :sender, String

      # @!attribute success
      #
      #   @return [Boolean]
      required :success, Privy::Internal::Type::Boolean

      # @!attribute transaction_hash
      #
      #   @return [String]
      required :transaction_hash, String

      # @!attribute type
      #   The type of webhook event.
      #
      #   @return [Symbol, Privy::Models::UserOperationCompletedWebhookPayload::Type]
      required :type, enum: -> { Privy::UserOperationCompletedWebhookPayload::Type }

      # @!attribute user_op_hash
      #
      #   @return [String]
      required :user_op_hash, String

      # @!method initialize(actual_gas_cost:, actual_gas_used:, block_number:, caip2:, log_index:, nonce:, paymaster:, sender:, success:, transaction_hash:, type:, user_op_hash:)
      #   Payload for the user_operation.completed webhook event.
      #
      #   @param actual_gas_cost [String]
      #
      #   @param actual_gas_used [String]
      #
      #   @param block_number [Float]
      #
      #   @param caip2 [String]
      #
      #   @param log_index [Float]
      #
      #   @param nonce [String]
      #
      #   @param paymaster [String, nil]
      #
      #   @param sender [String]
      #
      #   @param success [Boolean]
      #
      #   @param transaction_hash [String]
      #
      #   @param type [Symbol, Privy::Models::UserOperationCompletedWebhookPayload::Type] The type of webhook event.
      #
      #   @param user_op_hash [String]

      # The type of webhook event.
      #
      # @see Privy::Models::UserOperationCompletedWebhookPayload#type
      module Type
        extend Privy::Internal::Type::Enum

        USER_OPERATION_COMPLETED = :"user_operation.completed"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
