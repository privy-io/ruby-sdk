# frozen_string_literal: true

module Privy
  module Models
    class SolanaTokenProgramInstructionCondition < Privy::Internal::Type::BaseModel
      # @!attribute field
      #   Supported fields for Solana Token Program conditions including Transfer,
      #   TransferChecked, Burn, MintTo, CloseAccount, and InitializeAccount3 instruction
      #   fields.
      #
      #   @return [Symbol, Privy::Models::SolanaTokenProgramInstructionConditionField]
      required :field, enum: -> { Privy::SolanaTokenProgramInstructionConditionField }

      # @!attribute field_source
      #
      #   @return [Symbol, Privy::Models::SolanaTokenProgramInstructionCondition::FieldSource]
      required :field_source, enum: -> { Privy::SolanaTokenProgramInstructionCondition::FieldSource }

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
      #   {Privy::Models::SolanaTokenProgramInstructionCondition} for more details.
      #
      #   Solana Token Program attributes, including more granular TransferChecked
      #   instruction fields.
      #
      #   @param field [Symbol, Privy::Models::SolanaTokenProgramInstructionConditionField] Supported fields for Solana Token Program conditions including Transfer, Transfe
      #
      #   @param field_source [Symbol, Privy::Models::SolanaTokenProgramInstructionCondition::FieldSource]
      #
      #   @param operator [Symbol, Privy::Models::ConditionOperator] Operator to use for policy conditions.
      #
      #   @param value [String, Array<String>] Value to compare against in a policy condition. Can be a single string or an arr

      # @see Privy::Models::SolanaTokenProgramInstructionCondition#field_source
      module FieldSource
        extend Privy::Internal::Type::Enum

        SOLANA_TOKEN_PROGRAM_INSTRUCTION = :solana_token_program_instruction

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
