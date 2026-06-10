# frozen_string_literal: true

module Privy
  module Models
    class EthereumTypedDataMessageCondition < Privy::Internal::Type::BaseModel
      # @!attribute field
      #
      #   @return [String]
      required :field, String

      # @!attribute field_source
      #
      #   @return [Symbol, Privy::Models::EthereumTypedDataMessageCondition::FieldSource]
      required :field_source, enum: -> { Privy::EthereumTypedDataMessageCondition::FieldSource }

      # @!attribute operator
      #   Operator to use for policy conditions.
      #
      #   @return [Symbol, Privy::Models::ConditionOperator]
      required :operator, enum: -> { Privy::ConditionOperator }

      # @!attribute typed_data
      #   The typed data structure containing EIP-712 types and the primary type for typed
      #   data message policy conditions.
      #
      #   @return [Privy::Models::TypedDataInput]
      required :typed_data, -> { Privy::TypedDataInput }

      # @!attribute value
      #   Value to compare against in a policy condition. Can be a single string or an
      #   array of strings.
      #
      #   @return [String, Array<String>]
      required :value, union: -> { Privy::ConditionValue }

      # @!method initialize(field:, field_source:, operator:, typed_data:, value:)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::EthereumTypedDataMessageCondition} for more details.
      #
      #   'types' and 'primary_type' attributes of the TypedData JSON object defined in
      #   EIP-712.
      #
      #   @param field [String]
      #
      #   @param field_source [Symbol, Privy::Models::EthereumTypedDataMessageCondition::FieldSource]
      #
      #   @param operator [Symbol, Privy::Models::ConditionOperator] Operator to use for policy conditions.
      #
      #   @param typed_data [Privy::Models::TypedDataInput] The typed data structure containing EIP-712 types and the primary type for typed
      #
      #   @param value [String, Array<String>] Value to compare against in a policy condition. Can be a single string or an arr

      # @see Privy::Models::EthereumTypedDataMessageCondition#field_source
      module FieldSource
        extend Privy::Internal::Type::Enum

        ETHEREUM_TYPED_DATA_MESSAGE = :ethereum_typed_data_message

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
