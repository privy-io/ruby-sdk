# frozen_string_literal: true

module Privy
  module Models
    class SolanaSystemProgramInstructionCondition < Privy::Internal::Type::BaseModel
      # @!attribute field
      #   Supported fields for Solana System Program conditions including Transfer
      #   instruction fields.
      #
      #   @return [Symbol, Privy::Models::SolanaSystemProgramInstructionConditionField]
      required :field, enum: -> { Privy::SolanaSystemProgramInstructionConditionField }

      # @!attribute field_source
      #
      #   @return [Symbol, Privy::Models::SolanaSystemProgramInstructionCondition::FieldSource]
      required :field_source, enum: -> { Privy::SolanaSystemProgramInstructionCondition::FieldSource }

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
      #   {Privy::Models::SolanaSystemProgramInstructionCondition} for more details.
      #
      #   Solana System Program attributes, including more granular Transfer instruction
      #   fields.
      #
      #   @param field [Symbol, Privy::Models::SolanaSystemProgramInstructionConditionField] Supported fields for Solana System Program conditions including Transfer instruc
      #
      #   @param field_source [Symbol, Privy::Models::SolanaSystemProgramInstructionCondition::FieldSource]
      #
      #   @param operator [Symbol, Privy::Models::ConditionOperator] Operator to use for policy conditions.
      #
      #   @param value [String, Array<String>] Value to compare against in a policy condition. Can be a single string or an arr

      # @see Privy::Models::SolanaSystemProgramInstructionCondition#field_source
      module FieldSource
        extend Privy::Internal::Type::Enum

        SOLANA_SYSTEM_PROGRAM_INSTRUCTION = :solana_system_program_instruction

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
