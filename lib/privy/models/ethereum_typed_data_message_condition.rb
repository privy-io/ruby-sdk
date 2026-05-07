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
      #
      #   @return [Privy::Models::EthereumTypedDataMessageCondition::TypedData]
      required :typed_data, -> { Privy::EthereumTypedDataMessageCondition::TypedData }

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
      #   @param typed_data [Privy::Models::EthereumTypedDataMessageCondition::TypedData]
      #
      #   @param value [String, Array<String>] Value to compare against in a policy condition. Can be a single string or an arr

      # @see Privy::Models::EthereumTypedDataMessageCondition#field_source
      module FieldSource
        extend Privy::Internal::Type::Enum

        ETHEREUM_TYPED_DATA_MESSAGE = :ethereum_typed_data_message

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Privy::Models::EthereumTypedDataMessageCondition#typed_data
      class TypedData < Privy::Internal::Type::BaseModel
        # @!attribute primary_type
        #
        #   @return [String]
        required :primary_type, String

        # @!attribute types
        #   The type definitions for EIP-712 typed data signing.
        #
        #   @return [Hash{Symbol=>Array<Privy::Models::TypedDataTypeFieldInput>}]
        required :types,
                 -> { Privy::Internal::Type::HashOf[Privy::Internal::Type::ArrayOf[Privy::TypedDataTypeFieldInput]] }

        # @!method initialize(primary_type:, types:)
        #   @param primary_type [String]
        #
        #   @param types [Hash{Symbol=>Array<Privy::Models::TypedDataTypeFieldInput>}] The type definitions for EIP-712 typed data signing.
      end
    end
  end
end
