# typed: strong

module Privy
  module Models
    class EthereumTypedDataDomainCondition < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::EthereumTypedDataDomainCondition,
            Privy::Internal::AnyHash
          )
        end

      # Supported fields for Ethereum typed data domain conditions.
      sig { returns(Privy::EthereumTypedDataDomainConditionField::OrSymbol) }
      attr_accessor :field

      sig do
        returns(Privy::EthereumTypedDataDomainCondition::FieldSource::OrSymbol)
      end
      attr_accessor :field_source

      # Operator to use for policy conditions.
      sig { returns(Privy::ConditionOperator::OrSymbol) }
      attr_accessor :operator

      # Value to compare against in a policy condition. Can be a single string or an
      # array of strings.
      sig { returns(Privy::ConditionValue::Variants) }
      attr_accessor :value

      # Attributes from the signing domain that will verify the signature.
      sig do
        params(
          field: Privy::EthereumTypedDataDomainConditionField::OrSymbol,
          field_source:
            Privy::EthereumTypedDataDomainCondition::FieldSource::OrSymbol,
          operator: Privy::ConditionOperator::OrSymbol,
          value: Privy::ConditionValue::Variants
        ).returns(T.attached_class)
      end
      def self.new(
        # Supported fields for Ethereum typed data domain conditions.
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
            field: Privy::EthereumTypedDataDomainConditionField::OrSymbol,
            field_source:
              Privy::EthereumTypedDataDomainCondition::FieldSource::OrSymbol,
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
            T.all(Symbol, Privy::EthereumTypedDataDomainCondition::FieldSource)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ETHEREUM_TYPED_DATA_DOMAIN =
          T.let(
            :ethereum_typed_data_domain,
            Privy::EthereumTypedDataDomainCondition::FieldSource::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::EthereumTypedDataDomainCondition::FieldSource::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
