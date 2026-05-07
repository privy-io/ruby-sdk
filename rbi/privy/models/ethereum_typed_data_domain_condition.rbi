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

      sig { returns(Privy::EthereumTypedDataDomainCondition::Field::OrSymbol) }
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
          field: Privy::EthereumTypedDataDomainCondition::Field::OrSymbol,
          field_source:
            Privy::EthereumTypedDataDomainCondition::FieldSource::OrSymbol,
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
            field: Privy::EthereumTypedDataDomainCondition::Field::OrSymbol,
            field_source:
              Privy::EthereumTypedDataDomainCondition::FieldSource::OrSymbol,
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
            T.all(Symbol, Privy::EthereumTypedDataDomainCondition::Field)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CHAIN_ID =
          T.let(
            :chainId,
            Privy::EthereumTypedDataDomainCondition::Field::TaggedSymbol
          )
        CHAIN_ID_2 =
          T.let(
            :chain_id,
            Privy::EthereumTypedDataDomainCondition::Field::TaggedSymbol
          )
        VERIFYING_CONTRACT =
          T.let(
            :verifyingContract,
            Privy::EthereumTypedDataDomainCondition::Field::TaggedSymbol
          )
        VERIFYING_CONTRACT_2 =
          T.let(
            :verifying_contract,
            Privy::EthereumTypedDataDomainCondition::Field::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::EthereumTypedDataDomainCondition::Field::TaggedSymbol
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
