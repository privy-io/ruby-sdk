# typed: strong

module Privy
  module Models
    class SystemCondition < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Privy::SystemCondition, Privy::Internal::AnyHash) }

      sig { returns(Privy::SystemCondition::Field::OrSymbol) }
      attr_accessor :field

      sig { returns(Privy::SystemCondition::FieldSource::OrSymbol) }
      attr_accessor :field_source

      # Operator to use for policy conditions.
      sig { returns(Privy::ConditionOperator::OrSymbol) }
      attr_accessor :operator

      # Value to compare against in a policy condition. Can be a single string or an
      # array of strings.
      sig { returns(Privy::ConditionValue::Variants) }
      attr_accessor :value

      # System attributes, including current unix timestamp (in seconds).
      sig do
        params(
          field: Privy::SystemCondition::Field::OrSymbol,
          field_source: Privy::SystemCondition::FieldSource::OrSymbol,
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
            field: Privy::SystemCondition::Field::OrSymbol,
            field_source: Privy::SystemCondition::FieldSource::OrSymbol,
            operator: Privy::ConditionOperator::OrSymbol,
            value: Privy::ConditionValue::Variants
          }
        )
      end
      def to_hash
      end

      module Field
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Privy::SystemCondition::Field) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CURRENT_UNIX_TIMESTAMP =
          T.let(
            :current_unix_timestamp,
            Privy::SystemCondition::Field::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Privy::SystemCondition::Field::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      module FieldSource
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Privy::SystemCondition::FieldSource) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SYSTEM =
          T.let(:system, Privy::SystemCondition::FieldSource::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Privy::SystemCondition::FieldSource::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
