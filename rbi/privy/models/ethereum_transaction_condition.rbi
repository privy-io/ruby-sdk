# typed: strong

module Privy
  module Models
    class EthereumTransactionCondition < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::EthereumTransactionCondition, Privy::Internal::AnyHash)
        end

      # Ethereum transaction-level fields that can be referenced in a policy condition.
      sig { returns(Privy::EthereumTransactionConditionField::OrSymbol) }
      attr_accessor :field

      sig do
        returns(Privy::EthereumTransactionCondition::FieldSource::OrSymbol)
      end
      attr_accessor :field_source

      # Operator to use for policy conditions.
      sig { returns(Privy::ConditionOperator::OrSymbol) }
      attr_accessor :operator

      # Value to compare against in a policy condition. Can be a single string or an
      # array of strings.
      sig { returns(Privy::ConditionValue::Variants) }
      attr_accessor :value

      # The verbatim Ethereum transaction object in an eth_signTransaction or
      # eth_sendTransaction request.
      sig do
        params(
          field: Privy::EthereumTransactionConditionField::OrSymbol,
          field_source:
            Privy::EthereumTransactionCondition::FieldSource::OrSymbol,
          operator: Privy::ConditionOperator::OrSymbol,
          value: Privy::ConditionValue::Variants
        ).returns(T.attached_class)
      end
      def self.new(
        # Ethereum transaction-level fields that can be referenced in a policy condition.
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
            field: Privy::EthereumTransactionConditionField::OrSymbol,
            field_source:
              Privy::EthereumTransactionCondition::FieldSource::OrSymbol,
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
            T.all(Symbol, Privy::EthereumTransactionCondition::FieldSource)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ETHEREUM_TRANSACTION =
          T.let(
            :ethereum_transaction,
            Privy::EthereumTransactionCondition::FieldSource::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::EthereumTransactionCondition::FieldSource::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
