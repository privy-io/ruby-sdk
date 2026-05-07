# typed: strong

module Privy
  module Models
    class AggregationCondition < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::AggregationCondition, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :field

      sig { returns(Privy::AggregationCondition::FieldSource::OrSymbol) }
      attr_accessor :field_source

      # Operator to use for policy conditions.
      sig { returns(Privy::ConditionOperator::OrSymbol) }
      attr_accessor :operator

      # Value to compare against in a policy condition. Can be a single string or an
      # array of strings.
      sig { returns(Privy::ConditionValue::Variants) }
      attr_accessor :value

      # Condition referencing an aggregation value. The field must start with
      # "aggregation." followed by the aggregation ID.
      sig do
        params(
          field: String,
          field_source: Privy::AggregationCondition::FieldSource::OrSymbol,
          operator: Privy::ConditionOperator::OrSymbol,
          value: Privy::ConditionValue::Variants
        ).returns(T.attached_class)
      end
      def self.new(
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
            field: String,
            field_source: Privy::AggregationCondition::FieldSource::OrSymbol,
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
            T.all(Symbol, Privy::AggregationCondition::FieldSource)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        REFERENCE =
          T.let(
            :reference,
            Privy::AggregationCondition::FieldSource::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Privy::AggregationCondition::FieldSource::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
