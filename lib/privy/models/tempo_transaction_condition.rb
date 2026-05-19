# frozen_string_literal: true

module Privy
  module Models
    class TempoTransactionCondition < Privy::Internal::Type::BaseModel
      # @!attribute field
      #   Tempo (type 118) transaction-level fields that can be referenced in a policy
      #   condition.
      #
      #   @return [Symbol, Privy::Models::TempoTransactionConditionField]
      required :field, enum: -> { Privy::TempoTransactionConditionField }

      # @!attribute field_source
      #
      #   @return [Symbol, Privy::Models::TempoTransactionCondition::FieldSource]
      required :field_source, enum: -> { Privy::TempoTransactionCondition::FieldSource }

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
      #   {Privy::Models::TempoTransactionCondition} for more details.
      #
      #   A Tempo (type 118) transaction-level field. Evaluated once per transaction (not
      #   per call).
      #
      #   @param field [Symbol, Privy::Models::TempoTransactionConditionField] Tempo (type 118) transaction-level fields that can be referenced in a policy con
      #
      #   @param field_source [Symbol, Privy::Models::TempoTransactionCondition::FieldSource]
      #
      #   @param operator [Symbol, Privy::Models::ConditionOperator] Operator to use for policy conditions.
      #
      #   @param value [String, Array<String>] Value to compare against in a policy condition. Can be a single string or an arr

      # @see Privy::Models::TempoTransactionCondition#field_source
      module FieldSource
        extend Privy::Internal::Type::Enum

        TEMPO_TRANSACTION = :tempo_transaction

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
