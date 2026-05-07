# typed: strong

module Privy
  module Models
    class TronCalldataCondition < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::TronCalldataCondition, Privy::Internal::AnyHash)
        end

      # A Solidity ABI definition for decoding smart contract calldata.
      sig { returns(T::Array[Privy::AbiSchemaItem]) }
      attr_accessor :abi

      sig { returns(String) }
      attr_accessor :field

      sig { returns(Privy::TronCalldataCondition::FieldSource::OrSymbol) }
      attr_accessor :field_source

      # Operator to use for policy conditions.
      sig { returns(Privy::ConditionOperator::OrSymbol) }
      attr_accessor :operator

      # Value to compare against in a policy condition. Can be a single string or an
      # array of strings.
      sig { returns(Privy::ConditionValue::Variants) }
      attr_accessor :value

      # Decoded calldata from a TRON TriggerSmartContract interaction.
      sig do
        params(
          abi: T::Array[Privy::AbiSchemaItem::OrHash],
          field: String,
          field_source: Privy::TronCalldataCondition::FieldSource::OrSymbol,
          operator: Privy::ConditionOperator::OrSymbol,
          value: Privy::ConditionValue::Variants
        ).returns(T.attached_class)
      end
      def self.new(
        # A Solidity ABI definition for decoding smart contract calldata.
        abi:,
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
            abi: T::Array[Privy::AbiSchemaItem],
            field: String,
            field_source: Privy::TronCalldataCondition::FieldSource::OrSymbol,
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
            T.all(Symbol, Privy::TronCalldataCondition::FieldSource)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TRON_TRIGGER_SMART_CONTRACT_DATA =
          T.let(
            :tron_trigger_smart_contract_data,
            Privy::TronCalldataCondition::FieldSource::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Privy::TronCalldataCondition::FieldSource::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
