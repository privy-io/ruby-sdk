# typed: strong

module Privy
  module Models
    class SuiTransferObjectsCommandCondition < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::SuiTransferObjectsCommandCondition,
            Privy::Internal::AnyHash
          )
        end

      # Supported fields for SUI TransferObjects command conditions. Only 'recipient'
      # and 'amount' are supported.
      sig { returns(Privy::SuiTransferObjectsCommandField::OrSymbol) }
      attr_accessor :field

      sig do
        returns(
          Privy::SuiTransferObjectsCommandCondition::FieldSource::OrSymbol
        )
      end
      attr_accessor :field_source

      # Operator to use for policy conditions.
      sig { returns(Privy::ConditionOperator::OrSymbol) }
      attr_accessor :operator

      # Value to compare against in a policy condition. Can be a single string or an
      # array of strings.
      sig { returns(Privy::ConditionValue::Variants) }
      attr_accessor :value

      # SUI TransferObjects command attributes, including recipient and amount fields.
      sig do
        params(
          field: Privy::SuiTransferObjectsCommandField::OrSymbol,
          field_source:
            Privy::SuiTransferObjectsCommandCondition::FieldSource::OrSymbol,
          operator: Privy::ConditionOperator::OrSymbol,
          value: Privy::ConditionValue::Variants
        ).returns(T.attached_class)
      end
      def self.new(
        # Supported fields for SUI TransferObjects command conditions. Only 'recipient'
        # and 'amount' are supported.
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
            field: Privy::SuiTransferObjectsCommandField::OrSymbol,
            field_source:
              Privy::SuiTransferObjectsCommandCondition::FieldSource::OrSymbol,
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
            T.all(
              Symbol,
              Privy::SuiTransferObjectsCommandCondition::FieldSource
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SUI_TRANSFER_OBJECTS_COMMAND =
          T.let(
            :sui_transfer_objects_command,
            Privy::SuiTransferObjectsCommandCondition::FieldSource::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::SuiTransferObjectsCommandCondition::FieldSource::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
