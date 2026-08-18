# frozen_string_literal: true

module Privy
  module Models
    class XrplTransactionCondition < Privy::Internal::Type::BaseModel
      # @!attribute field
      #   Supported XRPL transaction field paths for policy conditions.
      #
      #   @return [Symbol, Privy::Models::XrplTransactionConditionField]
      required :field, enum: -> { Privy::XrplTransactionConditionField }

      # @!attribute field_source
      #
      #   @return [Symbol, Privy::Models::XrplTransactionCondition::FieldSource]
      required :field_source, enum: -> { Privy::XrplTransactionCondition::FieldSource }

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
      #   {Privy::Models::XrplTransactionCondition} for more details.
      #
      #   Policy condition evaluated against decoded XRPL transaction fields.
      #
      #   @param field [Symbol, Privy::Models::XrplTransactionConditionField] Supported XRPL transaction field paths for policy conditions.
      #
      #   @param field_source [Symbol, Privy::Models::XrplTransactionCondition::FieldSource]
      #
      #   @param operator [Symbol, Privy::Models::ConditionOperator] Operator to use for policy conditions.
      #
      #   @param value [String, Array<String>] Value to compare against in a policy condition. Can be a single string or an arr

      # @see Privy::Models::XrplTransactionCondition#field_source
      module FieldSource
        extend Privy::Internal::Type::Enum

        XRPL_TRANSACTION = :xrpl_transaction

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
