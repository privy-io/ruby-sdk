# typed: strong

module Privy
  module Models
    class TronTransactionCondition < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::TronTransactionCondition, Privy::Internal::AnyHash)
        end

      # Supported TRON transaction fields for TransferContract and TriggerSmartContract
      # in format "TransactionType.field_name".
      sig { returns(Privy::TronTransactionConditionField::OrSymbol) }
      attr_accessor :field

      sig { returns(Privy::TronTransactionCondition::FieldSource::OrSymbol) }
      attr_accessor :field_source

      # Operator to use for policy conditions.
      sig { returns(Privy::ConditionOperator::OrSymbol) }
      attr_accessor :operator

      # Value to compare against in a policy condition. Can be a single string or an
      # array of strings.
      sig { returns(Privy::ConditionValue::Variants) }
      attr_accessor :value

      # TRON transaction fields for TransferContract and TriggerSmartContract
      # transaction types.
      sig do
        params(
          field: Privy::TronTransactionConditionField::OrSymbol,
          field_source: Privy::TronTransactionCondition::FieldSource::OrSymbol,
          operator: Privy::ConditionOperator::OrSymbol,
          value: Privy::ConditionValue::Variants
        ).returns(T.attached_class)
      end
      def self.new(
        # Supported TRON transaction fields for TransferContract and TriggerSmartContract
        # in format "TransactionType.field_name".
        field:,
        field_source:,
        # Operator to use for policy conditions.
        operator:,
        # Value to compare against in a policy condition. Can be a single string or an
        # array of strings.
        value:
      )
      end

      sig do
        override.returns(
          {
            field: Privy::TronTransactionConditionField::OrSymbol,
            field_source:
              Privy::TronTransactionCondition::FieldSource::OrSymbol,
            operator: Privy::ConditionOperator::OrSymbol,
            value: Privy::ConditionValue::Variants
          }
        )
      end
      def to_hash
      end

      module FieldSource
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::TronTransactionCondition::FieldSource)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TRON_TRANSACTION =
          T.let(
            :tron_transaction,
            Privy::TronTransactionCondition::FieldSource::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Privy::TronTransactionCondition::FieldSource::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
