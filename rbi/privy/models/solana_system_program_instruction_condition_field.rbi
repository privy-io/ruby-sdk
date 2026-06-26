# typed: strong

module Privy
  module Models
    # Supported fields for Solana System Program conditions including Transfer
    # instruction fields.
    module SolanaSystemProgramInstructionConditionField
      extend Privy::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias do
          T.all(Symbol, Privy::SolanaSystemProgramInstructionConditionField)
        end
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      INSTRUCTION_NAME =
        T.let(
          :instructionName,
          Privy::SolanaSystemProgramInstructionConditionField::TaggedSymbol
        )
      TRANSFER_FROM =
        T.let(
          :"Transfer.from",
          Privy::SolanaSystemProgramInstructionConditionField::TaggedSymbol
        )
      TRANSFER_TO =
        T.let(
          :"Transfer.to",
          Privy::SolanaSystemProgramInstructionConditionField::TaggedSymbol
        )
      TRANSFER_LAMPORTS =
        T.let(
          :"Transfer.lamports",
          Privy::SolanaSystemProgramInstructionConditionField::TaggedSymbol
        )

      sig do
        override.returns(
          T::Array[
            Privy::SolanaSystemProgramInstructionConditionField::TaggedSymbol
          ]
        )
      end
      def self.values
      end
    end
  end
end
