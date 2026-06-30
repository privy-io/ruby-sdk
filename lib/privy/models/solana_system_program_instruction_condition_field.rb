# frozen_string_literal: true

module Privy
  module Models
    # Supported fields for Solana System Program conditions including Transfer
    # instruction fields.
    module SolanaSystemProgramInstructionConditionField
      extend Privy::Internal::Type::Enum

      INSTRUCTION_NAME = :instructionName
      TRANSFER_FROM = :"Transfer.from"
      TRANSFER_TO = :"Transfer.to"
      TRANSFER_LAMPORTS = :"Transfer.lamports"

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
