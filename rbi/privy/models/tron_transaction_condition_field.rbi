# typed: strong

module Privy
  module Models
    # Supported TRON transaction fields for TransferContract and TriggerSmartContract
    # in format "TransactionType.field_name".
    module TronTransactionConditionField
      extend Privy::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, Privy::TronTransactionConditionField) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      TRANSFER_CONTRACT_TO_ADDRESS =
        T.let(
          :"TransferContract.to_address",
          Privy::TronTransactionConditionField::TaggedSymbol
        )
      TRANSFER_CONTRACT_AMOUNT =
        T.let(
          :"TransferContract.amount",
          Privy::TronTransactionConditionField::TaggedSymbol
        )
      TRIGGER_SMART_CONTRACT_CONTRACT_ADDRESS =
        T.let(
          :"TriggerSmartContract.contract_address",
          Privy::TronTransactionConditionField::TaggedSymbol
        )
      TRIGGER_SMART_CONTRACT_CALL_VALUE =
        T.let(
          :"TriggerSmartContract.call_value",
          Privy::TronTransactionConditionField::TaggedSymbol
        )
      TRIGGER_SMART_CONTRACT_TOKEN_ID =
        T.let(
          :"TriggerSmartContract.token_id",
          Privy::TronTransactionConditionField::TaggedSymbol
        )
      TRIGGER_SMART_CONTRACT_CALL_TOKEN_VALUE =
        T.let(
          :"TriggerSmartContract.call_token_value",
          Privy::TronTransactionConditionField::TaggedSymbol
        )

      sig do
        override.returns(
          T::Array[Privy::TronTransactionConditionField::TaggedSymbol]
        )
      end
      def self.values
      end
    end
  end
end
