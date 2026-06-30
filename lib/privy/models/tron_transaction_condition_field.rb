# frozen_string_literal: true

module Privy
  module Models
    # Supported TRON transaction fields for TransferContract and TriggerSmartContract
    # in format "TransactionType.field_name".
    module TronTransactionConditionField
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
  end
end
