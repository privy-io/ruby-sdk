# frozen_string_literal: true

module Privy
  module Models
    class SystemCondition < Privy::Internal::Type::BaseModel
      # @!attribute field
      #
      #   @return [Symbol, Privy::Models::SystemCondition::Field]
      required :field, enum: -> { Privy::SystemCondition::Field }

      # @!attribute field_source
      #
      #   @return [Symbol, Privy::Models::SystemCondition::FieldSource]
      required :field_source, enum: -> { Privy::SystemCondition::FieldSource }

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
      #   {Privy::Models::SystemCondition} for more details.
      #
      #   System attributes, including current unix timestamp (in seconds).
      #
      #   @param field [Symbol, Privy::Models::SystemCondition::Field]
      #
      #   @param field_source [Symbol, Privy::Models::SystemCondition::FieldSource]
      #
      #   @param operator [Symbol, Privy::Models::ConditionOperator] Operator to use for policy conditions.
      #
      #   @param value [String, Array<String>] Value to compare against in a policy condition. Can be a single string or an arr

      # @see Privy::Models::SystemCondition#field
      module Field
        extend Privy::Internal::Type::Enum

        CURRENT_UNIX_TIMESTAMP = :current_unix_timestamp

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Privy::Models::SystemCondition#field_source
      module FieldSource
        extend Privy::Internal::Type::Enum

        SYSTEM = :system

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
