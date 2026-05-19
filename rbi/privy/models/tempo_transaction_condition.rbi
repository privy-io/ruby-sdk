# typed: strong

module Privy
  module Models
    class TempoTransactionCondition < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::TempoTransactionCondition, Privy::Internal::AnyHash)
        end

      # Tempo (type 118) transaction-level fields that can be referenced in a policy
      # condition.
      sig { returns(Privy::TempoTransactionConditionField::OrSymbol) }
      attr_accessor :field

      sig { returns(Privy::TempoTransactionCondition::FieldSource::OrSymbol) }
      attr_accessor :field_source

      # Operator to use for policy conditions.
      sig { returns(Privy::ConditionOperator::OrSymbol) }
      attr_accessor :operator

      # Value to compare against in a policy condition. Can be a single string or an
      # array of strings.
      sig { returns(Privy::ConditionValue::Variants) }
      attr_accessor :value

      # A Tempo (type 118) transaction-level field. Evaluated once per transaction (not
      # per call).
      sig do
        params(
          field: Privy::TempoTransactionConditionField::OrSymbol,
          field_source: Privy::TempoTransactionCondition::FieldSource::OrSymbol,
          operator: Privy::ConditionOperator::OrSymbol,
          value: Privy::ConditionValue::Variants
        ).returns(T.attached_class)
      end
      def self.new(
        # Tempo (type 118) transaction-level fields that can be referenced in a policy
        # condition.
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
            field: Privy::TempoTransactionConditionField::OrSymbol,
            field_source:
              Privy::TempoTransactionCondition::FieldSource::OrSymbol,
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
            T.all(Symbol, Privy::TempoTransactionCondition::FieldSource)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TEMPO_TRANSACTION =
          T.let(
            :tempo_transaction,
            Privy::TempoTransactionCondition::FieldSource::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::TempoTransactionCondition::FieldSource::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
