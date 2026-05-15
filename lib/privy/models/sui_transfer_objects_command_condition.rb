# frozen_string_literal: true

module Privy
  module Models
    class SuiTransferObjectsCommandCondition < Privy::Internal::Type::BaseModel
      # @!attribute field
      #   Supported fields for SUI TransferObjects command conditions. Only 'recipient'
      #   and 'amount' are supported.
      #
      #   @return [Symbol, Privy::Models::SuiTransferObjectsCommandField]
      required :field, enum: -> { Privy::SuiTransferObjectsCommandField }

      # @!attribute field_source
      #
      #   @return [Symbol, Privy::Models::SuiTransferObjectsCommandCondition::FieldSource]
      required :field_source, enum: -> { Privy::SuiTransferObjectsCommandCondition::FieldSource }

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
      #   {Privy::Models::SuiTransferObjectsCommandCondition} for more details.
      #
      #   SUI TransferObjects command attributes, including recipient and amount fields.
      #
      #   @param field [Symbol, Privy::Models::SuiTransferObjectsCommandField] Supported fields for SUI TransferObjects command conditions. Only 'recipient' an
      #
      #   @param field_source [Symbol, Privy::Models::SuiTransferObjectsCommandCondition::FieldSource]
      #
      #   @param operator [Symbol, Privy::Models::ConditionOperator] Operator to use for policy conditions.
      #
      #   @param value [String, Array<String>] Value to compare against in a policy condition. Can be a single string or an arr

      # @see Privy::Models::SuiTransferObjectsCommandCondition#field_source
      module FieldSource
        extend Privy::Internal::Type::Enum

        SUI_TRANSFER_OBJECTS_COMMAND = :sui_transfer_objects_command

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
