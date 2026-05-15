# typed: strong

module Privy
  module Models
    class EthereumCalldataCondition < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::EthereumCalldataCondition, Privy::Internal::AnyHash)
        end

      # A Solidity ABI definition for decoding smart contract calldata.
      sig { returns(T::Array[Privy::AbiSchemaItem]) }
      attr_accessor :abi

      sig { returns(String) }
      attr_accessor :field

      sig { returns(Privy::EthereumCalldataCondition::FieldSource::OrSymbol) }
      attr_accessor :field_source

      # Operator to use for policy conditions.
      sig { returns(Privy::ConditionOperator::OrSymbol) }
      attr_accessor :operator

      # Value to compare against in a policy condition. Can be a single string or an
      # array of strings.
      sig { returns(Privy::ConditionValue::Variants) }
      attr_accessor :value

      # The decoded calldata in a smart contract interaction as the smart contract
      # method's parameters. Note that 'ethereum_calldata' conditions must contain an
      # abi parameter with the JSON ABI of the smart contract.
      sig do
        params(
          abi: T::Array[Privy::AbiSchemaItem::OrHash],
          field: String,
          field_source: Privy::EthereumCalldataCondition::FieldSource::OrSymbol,
          operator: Privy::ConditionOperator::OrSymbol,
          value: Privy::ConditionValue::Variants
        ).returns(T.attached_class)
      end
      def self.new(
        # A Solidity ABI definition for decoding smart contract calldata.
        abi:,
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
            abi: T::Array[Privy::AbiSchemaItem],
            field: String,
            field_source:
              Privy::EthereumCalldataCondition::FieldSource::OrSymbol,
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
            T.all(Symbol, Privy::EthereumCalldataCondition::FieldSource)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ETHEREUM_CALLDATA =
          T.let(
            :ethereum_calldata,
            Privy::EthereumCalldataCondition::FieldSource::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::EthereumCalldataCondition::FieldSource::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
