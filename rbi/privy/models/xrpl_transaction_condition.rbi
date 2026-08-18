# typed: strong

module Privy
  module Models
    class XrplTransactionCondition < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::XrplTransactionCondition, Privy::Internal::AnyHash)
        end

      # Supported XRPL transaction field paths for policy conditions.
      sig { returns(Privy::XrplTransactionConditionField::OrSymbol) }
      attr_accessor :field

      sig { returns(Privy::XrplTransactionCondition::FieldSource::OrSymbol) }
      attr_accessor :field_source

      # Operator to use for policy conditions.
      sig { returns(Privy::ConditionOperator::OrSymbol) }
      attr_accessor :operator

      # Value to compare against in a policy condition. Can be a single string or an
      # array of strings.
      sig { returns(Privy::ConditionValue::Variants) }
      attr_accessor :value

      # Policy condition evaluated against decoded XRPL transaction fields.
      sig do
        params(
          field: Privy::XrplTransactionConditionField::OrSymbol,
          field_source: Privy::XrplTransactionCondition::FieldSource::OrSymbol,
          operator: Privy::ConditionOperator::OrSymbol,
          value: Privy::ConditionValue::Variants
        ).returns(T.attached_class)
      end
      def self.new(
        # Supported XRPL transaction field paths for policy conditions.
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
            field: Privy::XrplTransactionConditionField::OrSymbol,
            field_source:
              Privy::XrplTransactionCondition::FieldSource::OrSymbol,
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
            T.all(Symbol, Privy::XrplTransactionCondition::FieldSource)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        XRPL_TRANSACTION =
          T.let(
            :xrpl_transaction,
            Privy::XrplTransactionCondition::FieldSource::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Privy::XrplTransactionCondition::FieldSource::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
