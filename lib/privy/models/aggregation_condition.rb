# frozen_string_literal: true

module Privy
  module Models
    class AggregationCondition < Privy::Internal::Type::BaseModel
      # @!attribute field
      #
      #   @return [String]
      required :field, String

      # @!attribute field_source
      #
      #   @return [Symbol, Privy::Models::AggregationCondition::FieldSource]
      required :field_source, enum: -> { Privy::AggregationCondition::FieldSource }

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
      #   {Privy::Models::AggregationCondition} for more details.
      #
      #   Condition referencing an aggregation value. The field must start with
      #   "aggregation." followed by the aggregation ID.
      #
      #   @param field [String]
      #
      #   @param field_source [Symbol, Privy::Models::AggregationCondition::FieldSource]
      #
      #   @param operator [Symbol, Privy::Models::ConditionOperator] Operator to use for policy conditions.
      #
      #   @param value [String, Array<String>] Value to compare against in a policy condition. Can be a single string or an arr

      # @see Privy::Models::AggregationCondition#field_source
      module FieldSource
        extend Privy::Internal::Type::Enum

        REFERENCE = :reference

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
