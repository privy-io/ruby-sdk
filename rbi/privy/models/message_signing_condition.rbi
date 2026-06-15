# typed: strong

module Privy
  module Models
    class MessageSigningCondition < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::MessageSigningCondition, Privy::Internal::AnyHash)
        end

      # Supported fields for message signing conditions.
      sig { returns(Privy::MessageSigningField::OrSymbol) }
      attr_accessor :field

      sig { returns(Privy::MessageSigningCondition::FieldSource::OrSymbol) }
      attr_accessor :field_source

      # Operator to use for policy conditions.
      sig { returns(Privy::ConditionOperator::OrSymbol) }
      attr_accessor :operator

      # Value to compare against in a policy condition. Can be a single string or an
      # array of strings.
      sig { returns(Privy::ConditionValue::Variants) }
      attr_accessor :value

      # Condition on the message being signed (e.g. in personal_sign).
      sig do
        params(
          field: Privy::MessageSigningField::OrSymbol,
          field_source: Privy::MessageSigningCondition::FieldSource::OrSymbol,
          operator: Privy::ConditionOperator::OrSymbol,
          value: Privy::ConditionValue::Variants
        ).returns(T.attached_class)
      end
      def self.new(
        # Supported fields for message signing conditions.
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
            field: Privy::MessageSigningField::OrSymbol,
            field_source: Privy::MessageSigningCondition::FieldSource::OrSymbol,
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
            T.all(Symbol, Privy::MessageSigningCondition::FieldSource)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        MESSAGE =
          T.let(
            :message,
            Privy::MessageSigningCondition::FieldSource::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Privy::MessageSigningCondition::FieldSource::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
