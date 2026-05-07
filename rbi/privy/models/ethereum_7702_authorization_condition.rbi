# typed: strong

module Privy
  module Models
    class Ethereum7702AuthorizationCondition < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::Ethereum7702AuthorizationCondition,
            Privy::Internal::AnyHash
          )
        end

      sig do
        returns(Privy::Ethereum7702AuthorizationCondition::Field::OrSymbol)
      end
      attr_accessor :field

      sig do
        returns(
          Privy::Ethereum7702AuthorizationCondition::FieldSource::OrSymbol
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

      # Allowed contract addresses for eth_sign7702Authorization requests.
      sig do
        params(
          field: Privy::Ethereum7702AuthorizationCondition::Field::OrSymbol,
          field_source:
            Privy::Ethereum7702AuthorizationCondition::FieldSource::OrSymbol,
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
            field: Privy::Ethereum7702AuthorizationCondition::Field::OrSymbol,
            field_source:
              Privy::Ethereum7702AuthorizationCondition::FieldSource::OrSymbol,
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
          T.type_alias do
            T.all(Symbol, Privy::Ethereum7702AuthorizationCondition::Field)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CONTRACT =
          T.let(
            :contract,
            Privy::Ethereum7702AuthorizationCondition::Field::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::Ethereum7702AuthorizationCondition::Field::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      module FieldSource
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Privy::Ethereum7702AuthorizationCondition::FieldSource
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ETHEREUM_7702_AUTHORIZATION =
          T.let(
            :ethereum_7702_authorization,
            Privy::Ethereum7702AuthorizationCondition::FieldSource::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::Ethereum7702AuthorizationCondition::FieldSource::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
