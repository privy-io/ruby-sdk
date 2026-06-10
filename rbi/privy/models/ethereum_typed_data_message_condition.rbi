# typed: strong

module Privy
  module Models
    class EthereumTypedDataMessageCondition < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::EthereumTypedDataMessageCondition,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :field

      sig do
        returns(Privy::EthereumTypedDataMessageCondition::FieldSource::OrSymbol)
      end
      attr_accessor :field_source

      # Operator to use for policy conditions.
      sig { returns(Privy::ConditionOperator::OrSymbol) }
      attr_accessor :operator

      # The typed data structure containing EIP-712 types and the primary type for typed
      # data message policy conditions.
      sig { returns(Privy::TypedDataInput) }
      attr_reader :typed_data

      sig { params(typed_data: Privy::TypedDataInput::OrHash).void }
      attr_writer :typed_data

      # Value to compare against in a policy condition. Can be a single string or an
      # array of strings.
      sig { returns(Privy::ConditionValue::Variants) }
      attr_accessor :value

      # 'types' and 'primary_type' attributes of the TypedData JSON object defined in
      # EIP-712.
      sig do
        params(
          field: String,
          field_source:
            Privy::EthereumTypedDataMessageCondition::FieldSource::OrSymbol,
          operator: Privy::ConditionOperator::OrSymbol,
          typed_data: Privy::TypedDataInput::OrHash,
          value: Privy::ConditionValue::Variants
        ).returns(T.attached_class)
      end
      def self.new(
        field:,
        field_source:,
        # Operator to use for policy conditions.
        operator:,
        # The typed data structure containing EIP-712 types and the primary type for typed
        # data message policy conditions.
        typed_data:,
        # Value to compare against in a policy condition. Can be a single string or an
        # array of strings.
        value:
      )
      end

      sig do
        override.returns(
          {
            field: String,
            field_source:
              Privy::EthereumTypedDataMessageCondition::FieldSource::OrSymbol,
            operator: Privy::ConditionOperator::OrSymbol,
            typed_data: Privy::TypedDataInput,
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
            T.all(Symbol, Privy::EthereumTypedDataMessageCondition::FieldSource)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ETHEREUM_TYPED_DATA_MESSAGE =
          T.let(
            :ethereum_typed_data_message,
            Privy::EthereumTypedDataMessageCondition::FieldSource::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::EthereumTypedDataMessageCondition::FieldSource::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
