# frozen_string_literal: true

module Privy
  module Models
    class SolanaTokenProgramInstructionCondition < Privy::Internal::Type::BaseModel
      # @!attribute field
      #
      #   @return [Symbol, Privy::Models::SolanaTokenProgramInstructionCondition::Field]
      required :field, enum: -> { Privy::SolanaTokenProgramInstructionCondition::Field }

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
      #   @param field [Symbol, Privy::Models::SolanaTokenProgramInstructionCondition::Field]
      #
      #   @param field_source [Symbol, Privy::Models::SolanaTokenProgramInstructionCondition::FieldSource]
      #
      #   @param operator [Symbol, Privy::Models::ConditionOperator] Operator to use for policy conditions.
      #
      #   @param value [String, Array<String>] Value to compare against in a policy condition. Can be a single string or an arr

      # @see Privy::Models::SolanaTokenProgramInstructionCondition#field
      module Field
        extend Privy::Internal::Type::Enum

        INSTRUCTION_NAME = :instructionName
        TRANSFER_SOURCE = :"Transfer.source"
        TRANSFER_DESTINATION = :"Transfer.destination"
        TRANSFER_AUTHORITY = :"Transfer.authority"
        TRANSFER_AMOUNT = :"Transfer.amount"
        TRANSFER_CHECKED_SOURCE = :"TransferChecked.source"
        TRANSFER_CHECKED_DESTINATION = :"TransferChecked.destination"
        TRANSFER_CHECKED_AUTHORITY = :"TransferChecked.authority"
        TRANSFER_CHECKED_AMOUNT = :"TransferChecked.amount"
        TRANSFER_CHECKED_MINT = :"TransferChecked.mint"
        BURN_ACCOUNT = :"Burn.account"
        BURN_MINT = :"Burn.mint"
        BURN_AUTHORITY = :"Burn.authority"
        BURN_AMOUNT = :"Burn.amount"
        MINT_TO_MINT = :"MintTo.mint"
        MINT_TO_ACCOUNT = :"MintTo.account"
        MINT_TO_AUTHORITY = :"MintTo.authority"
        MINT_TO_AMOUNT = :"MintTo.amount"
        CLOSE_ACCOUNT_ACCOUNT = :"CloseAccount.account"
        CLOSE_ACCOUNT_DESTINATION = :"CloseAccount.destination"
        CLOSE_ACCOUNT_AUTHORITY = :"CloseAccount.authority"
        INITIALIZE_ACCOUNT3_ACCOUNT = :"InitializeAccount3.account"
        INITIALIZE_ACCOUNT3_MINT = :"InitializeAccount3.mint"
        INITIALIZE_ACCOUNT3_OWNER = :"InitializeAccount3.owner"

        # @!method self.values
        #   @return [Array<Symbol>]
      end

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
