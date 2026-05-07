# frozen_string_literal: true

module Privy
  module Models
    class TronCalldataCondition < Privy::Internal::Type::BaseModel
      # @!attribute abi
      #   A Solidity ABI definition for decoding smart contract calldata.
      #
      #   @return [Array<Privy::Models::AbiSchemaItem>]
      required :abi, -> { Privy::Internal::Type::ArrayOf[Privy::AbiSchemaItem] }

      # @!attribute field
      #
      #   @return [String]
      required :field, String

      # @!attribute field_source
      #
      #   @return [Symbol, Privy::Models::TronCalldataCondition::FieldSource]
      required :field_source, enum: -> { Privy::TronCalldataCondition::FieldSource }

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

      # @!method initialize(abi:, field:, field_source:, operator:, value:)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::TronCalldataCondition} for more details.
      #
      #   Decoded calldata from a TRON TriggerSmartContract interaction.
      #
      #   @param abi [Array<Privy::Models::AbiSchemaItem>] A Solidity ABI definition for decoding smart contract calldata.
      #
      #   @param field [String]
      #
      #   @param field_source [Symbol, Privy::Models::TronCalldataCondition::FieldSource]
      #
      #   @param operator [Symbol, Privy::Models::ConditionOperator] Operator to use for policy conditions.
      #
      #   @param value [String, Array<String>] Value to compare against in a policy condition. Can be a single string or an arr

      # @see Privy::Models::TronCalldataCondition#field_source
      module FieldSource
        extend Privy::Internal::Type::Enum

        TRON_TRIGGER_SMART_CONTRACT_DATA = :tron_trigger_smart_contract_data

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
