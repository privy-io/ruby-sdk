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

      sig { returns(Privy::EthereumTypedDataMessageCondition::TypedData) }
      attr_reader :typed_data

      sig do
        params(
          typed_data:
            Privy::EthereumTypedDataMessageCondition::TypedData::OrHash
        ).void
      end
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
          typed_data:
            Privy::EthereumTypedDataMessageCondition::TypedData::OrHash,
          value: Privy::ConditionValue::Variants
        ).returns(T.attached_class)
      end
      def self.new(
        field:,
        field_source:,
        # Operator to use for policy conditions.
        operator:,
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
            typed_data: Privy::EthereumTypedDataMessageCondition::TypedData,
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

      class TypedData < Privy::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Privy::EthereumTypedDataMessageCondition::TypedData,
              Privy::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :primary_type

        # The type definitions for EIP-712 typed data signing.
        sig do
          returns(T::Hash[Symbol, T::Array[Privy::TypedDataTypeFieldInput]])
        end
        attr_accessor :types

        sig do
          params(
            primary_type: String,
            types:
              T::Hash[Symbol, T::Array[Privy::TypedDataTypeFieldInput::OrHash]]
          ).returns(T.attached_class)
        end
        def self.new(
          primary_type:,
          # The type definitions for EIP-712 typed data signing.
          types:
        )
        end

        sig do
          override.returns(
            {
              primary_type: String,
              types: T::Hash[Symbol, T::Array[Privy::TypedDataTypeFieldInput]]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
