# frozen_string_literal: true

module Privy
  module Models
    class TronTransactionCondition < Privy::Internal::Type::BaseModel
      # @!attribute field
      #   Supported TRON transaction fields in format "TransactionType.field_name"
      #
      #   @return [Symbol, Privy::Models::TronTransactionCondition::Field]
      required :field, enum: -> { Privy::TronTransactionCondition::Field }

      # @!attribute field_source
      #
      #   @return [Symbol, Privy::Models::TronTransactionCondition::FieldSource]
      required :field_source, enum: -> { Privy::TronTransactionCondition::FieldSource }

      # @!attribute operator
      #   Operator to use for policy conditions.
      #
      #   @return [Symbol, Privy::Models::ConditionOperator]
      required :operator, enum: -> { Privy::ConditionOperator }

      # @!attribute value
      #   Value to compare against in a policy condition. Can be a single string or an
      #   array of strings.
      #
      #   @return [String, Array<String>]
      required :value, union: -> { Privy::ConditionValue }

      # @!method initialize(field:, field_source:, operator:, value:)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::TronTransactionCondition} for more details.
      #
      #   TRON transaction fields for TransferContract and TriggerSmartContract
      #   transaction types.
      #
      #   @param field [Symbol, Privy::Models::TronTransactionCondition::Field] Supported TRON transaction fields in format "TransactionType.field_name"
      #
      #   @param field_source [Symbol, Privy::Models::TronTransactionCondition::FieldSource]
      #
      #   @param operator [Symbol, Privy::Models::ConditionOperator] Operator to use for policy conditions.
      #
      #   @param value [String, Array<String>] Value to compare against in a policy condition. Can be a single string or an arr

      # Supported TRON transaction fields in format "TransactionType.field_name"
      #
      # @see Privy::Models::TronTransactionCondition#field
      module Field
        extend Privy::Internal::Type::Enum

        TRANSFER_CONTRACT_TO_ADDRESS = :"TransferContract.to_address"
        TRANSFER_CONTRACT_AMOUNT = :"TransferContract.amount"
        TRIGGER_SMART_CONTRACT_CONTRACT_ADDRESS = :"TriggerSmartContract.contract_address"
        TRIGGER_SMART_CONTRACT_CALL_VALUE = :"TriggerSmartContract.call_value"
        TRIGGER_SMART_CONTRACT_TOKEN_ID = :"TriggerSmartContract.token_id"
        TRIGGER_SMART_CONTRACT_CALL_TOKEN_VALUE = :"TriggerSmartContract.call_token_value"

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Privy::Models::TronTransactionCondition#field_source
      module FieldSource
        extend Privy::Internal::Type::Enum

        TRON_TRANSACTION = :tron_transaction

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
