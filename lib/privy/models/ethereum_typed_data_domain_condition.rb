# frozen_string_literal: true

module Privy
  module Models
    class EthereumTypedDataDomainCondition < Privy::Internal::Type::BaseModel
      # @!attribute field
      #   Supported fields for Ethereum typed data domain conditions.
      #
      #   @return [Symbol, Privy::Models::EthereumTypedDataDomainConditionField]
      required :field, enum: -> { Privy::EthereumTypedDataDomainConditionField }

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
      #   @param field [Symbol, Privy::Models::EthereumTypedDataDomainConditionField] Supported fields for Ethereum typed data domain conditions.
      #
      #   @param field_source [Symbol, Privy::Models::EthereumTypedDataDomainCondition::FieldSource]
      #
      #   @param operator [Symbol, Privy::Models::ConditionOperator] Operator to use for policy conditions.
      #
      #   @param value [String, Array<String>] Value to compare against in a policy condition. Can be a single string or an arr

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
