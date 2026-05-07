# frozen_string_literal: true

module Privy
  module Models
    class EthereumTypedDataDomainCondition < Privy::Internal::Type::BaseModel
      # @!attribute field
      #
      #   @return [Symbol, Privy::Models::EthereumTypedDataDomainCondition::Field]
      required :field, enum: -> { Privy::EthereumTypedDataDomainCondition::Field }

      # @!attribute field_source
      #
      #   @return [Symbol, Privy::Models::EthereumTypedDataDomainCondition::FieldSource]
      required :field_source, enum: -> { Privy::EthereumTypedDataDomainCondition::FieldSource }

      # @!attribute operator
      #   Operator to use for policy conditions.
      #
      #   @return [Symbol, Privy::Models::ConditionOperator]
      required :operator, enum: -> { Privy::ConditionOperator }

      # @!attribute value
      #   Value to compare against in a policy condition. Can be a single string or an
      #   array of strings.
      #
      #   @return [String, Array<String>]
      required :value, union: -> { Privy::ConditionValue }

      # @!method initialize(field:, field_source:, operator:, value:)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::EthereumTypedDataDomainCondition} for more details.
      #
      #   Attributes from the signing domain that will verify the signature.
      #
      #   @param field [Symbol, Privy::Models::EthereumTypedDataDomainCondition::Field]
      #
      #   @param field_source [Symbol, Privy::Models::EthereumTypedDataDomainCondition::FieldSource]
      #
      #   @param operator [Symbol, Privy::Models::ConditionOperator] Operator to use for policy conditions.
      #
      #   @param value [String, Array<String>] Value to compare against in a policy condition. Can be a single string or an arr

      # @see Privy::Models::EthereumTypedDataDomainCondition#field
      module Field
        extend Privy::Internal::Type::Enum

        CHAIN_ID = :chainId
        CHAIN_ID_2 = :chain_id
        VERIFYING_CONTRACT = :verifyingContract
        VERIFYING_CONTRACT_2 = :verifying_contract

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Privy::Models::EthereumTypedDataDomainCondition#field_source
      module FieldSource
        extend Privy::Internal::Type::Enum

        ETHEREUM_TYPED_DATA_DOMAIN = :ethereum_typed_data_domain

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
