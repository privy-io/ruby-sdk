# frozen_string_literal: true

module Privy
  module Models
    class SolanaProgramInstructionCondition < Privy::Internal::Type::BaseModel
      # @!attribute field
      #
      #   @return [Symbol, Privy::Models::SolanaProgramInstructionCondition::Field]
      required :field, enum: -> { Privy::SolanaProgramInstructionCondition::Field }

      # @!attribute field_source
      #
      #   @return [Symbol, Privy::Models::SolanaProgramInstructionCondition::FieldSource]
      required :field_source, enum: -> { Privy::SolanaProgramInstructionCondition::FieldSource }

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
      #   {Privy::Models::SolanaProgramInstructionCondition} for more details.
      #
      #   Solana Program attributes, enables allowlisting Solana Programs.
      #
      #   @param field [Symbol, Privy::Models::SolanaProgramInstructionCondition::Field]
      #
      #   @param field_source [Symbol, Privy::Models::SolanaProgramInstructionCondition::FieldSource]
      #
      #   @param operator [Symbol, Privy::Models::ConditionOperator] Operator to use for policy conditions.
      #
      #   @param value [String, Array<String>] Value to compare against in a policy condition. Can be a single string or an arr

      # @see Privy::Models::SolanaProgramInstructionCondition#field
      module Field
        extend Privy::Internal::Type::Enum

        PROGRAM_ID = :programId

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Privy::Models::SolanaProgramInstructionCondition#field_source
      module FieldSource
        extend Privy::Internal::Type::Enum

        SOLANA_PROGRAM_INSTRUCTION = :solana_program_instruction

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
