# frozen_string_literal: true

module Privy
  module Models
    class MessageSigningCondition < Privy::Internal::Type::BaseModel
      # @!attribute field
      #   Supported fields for message signing conditions.
      #
      #   @return [Symbol, Privy::Models::MessageSigningField]
      required :field, enum: -> { Privy::MessageSigningField }

      # @!attribute field_source
      #
      #   @return [Symbol, Privy::Models::MessageSigningCondition::FieldSource]
      required :field_source, enum: -> { Privy::MessageSigningCondition::FieldSource }

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
      #   {Privy::Models::MessageSigningCondition} for more details.
      #
      #   Condition on the message being signed (e.g. in personal_sign).
      #
      #   @param field [Symbol, Privy::Models::MessageSigningField] Supported fields for message signing conditions.
      #
      #   @param field_source [Symbol, Privy::Models::MessageSigningCondition::FieldSource]
      #
      #   @param operator [Symbol, Privy::Models::ConditionOperator] Operator to use for policy conditions.
      #
      #   @param value [String, Array<String>] Value to compare against in a policy condition. Can be a single string or an arr

      # @see Privy::Models::MessageSigningCondition#field_source
      module FieldSource
        extend Privy::Internal::Type::Enum

        MESSAGE = :message

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
