# typed: strong

module Privy
  module Models
    class ActionRequestBodyCondition < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::ActionRequestBodyCondition, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :field

      sig { returns(Privy::ActionRequestBodyCondition::FieldSource::OrSymbol) }
      attr_accessor :field_source

      # Operator to use for policy conditions.
      sig { returns(Privy::ConditionOperator::OrSymbol) }
      attr_accessor :operator

      # Value to compare against in a policy condition. Can be a single string or an
      # array of strings.
      sig { returns(Privy::ConditionValue::Variants) }
      attr_accessor :value

      # Condition on the original wallet action API request body fields.
      sig do
        params(
          field: String,
          field_source:
            Privy::ActionRequestBodyCondition::FieldSource::OrSymbol,
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
            field_source:
              Privy::ActionRequestBodyCondition::FieldSource::OrSymbol,
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
            T.all(Symbol, Privy::ActionRequestBodyCondition::FieldSource)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACTION_REQUEST_BODY =
          T.let(
            :action_request_body,
            Privy::ActionRequestBodyCondition::FieldSource::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::ActionRequestBodyCondition::FieldSource::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
