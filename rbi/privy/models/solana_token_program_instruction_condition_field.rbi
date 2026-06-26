# typed: strong

module Privy
  module Models
    # Supported fields for Solana Token Program conditions including Transfer,
    # TransferChecked, Burn, MintTo, CloseAccount, and InitializeAccount3 instruction
    # fields.
    module SolanaTokenProgramInstructionConditionField
      extend Privy::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias do
          T.all(Symbol, Privy::SolanaTokenProgramInstructionConditionField)
        end
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      INSTRUCTION_NAME =
        T.let(
          :instructionName,
          Privy::SolanaTokenProgramInstructionConditionField::TaggedSymbol
        )
      TRANSFER_SOURCE =
        T.let(
          :"Transfer.source",
          Privy::SolanaTokenProgramInstructionConditionField::TaggedSymbol
        )
      TRANSFER_DESTINATION =
        T.let(
          :"Transfer.destination",
          Privy::SolanaTokenProgramInstructionConditionField::TaggedSymbol
        )
      TRANSFER_AUTHORITY =
        T.let(
          :"Transfer.authority",
          Privy::SolanaTokenProgramInstructionConditionField::TaggedSymbol
        )
      TRANSFER_AMOUNT =
        T.let(
          :"Transfer.amount",
          Privy::SolanaTokenProgramInstructionConditionField::TaggedSymbol
        )
      TRANSFER_CHECKED_SOURCE =
        T.let(
          :"TransferChecked.source",
          Privy::SolanaTokenProgramInstructionConditionField::TaggedSymbol
        )
      TRANSFER_CHECKED_DESTINATION =
        T.let(
          :"TransferChecked.destination",
          Privy::SolanaTokenProgramInstructionConditionField::TaggedSymbol
        )
      TRANSFER_CHECKED_AUTHORITY =
        T.let(
          :"TransferChecked.authority",
          Privy::SolanaTokenProgramInstructionConditionField::TaggedSymbol
        )
      TRANSFER_CHECKED_AMOUNT =
        T.let(
          :"TransferChecked.amount",
          Privy::SolanaTokenProgramInstructionConditionField::TaggedSymbol
        )
      TRANSFER_CHECKED_MINT =
        T.let(
          :"TransferChecked.mint",
          Privy::SolanaTokenProgramInstructionConditionField::TaggedSymbol
        )
      BURN_ACCOUNT =
        T.let(
          :"Burn.account",
          Privy::SolanaTokenProgramInstructionConditionField::TaggedSymbol
        )
      BURN_MINT =
        T.let(
          :"Burn.mint",
          Privy::SolanaTokenProgramInstructionConditionField::TaggedSymbol
        )
      BURN_AUTHORITY =
        T.let(
          :"Burn.authority",
          Privy::SolanaTokenProgramInstructionConditionField::TaggedSymbol
        )
      BURN_AMOUNT =
        T.let(
          :"Burn.amount",
          Privy::SolanaTokenProgramInstructionConditionField::TaggedSymbol
        )
      MINT_TO_MINT =
        T.let(
          :"MintTo.mint",
          Privy::SolanaTokenProgramInstructionConditionField::TaggedSymbol
        )
      MINT_TO_ACCOUNT =
        T.let(
          :"MintTo.account",
          Privy::SolanaTokenProgramInstructionConditionField::TaggedSymbol
        )
      MINT_TO_AUTHORITY =
        T.let(
          :"MintTo.authority",
          Privy::SolanaTokenProgramInstructionConditionField::TaggedSymbol
        )
      MINT_TO_AMOUNT =
        T.let(
          :"MintTo.amount",
          Privy::SolanaTokenProgramInstructionConditionField::TaggedSymbol
        )
      CLOSE_ACCOUNT_ACCOUNT =
        T.let(
          :"CloseAccount.account",
          Privy::SolanaTokenProgramInstructionConditionField::TaggedSymbol
        )
      CLOSE_ACCOUNT_DESTINATION =
        T.let(
          :"CloseAccount.destination",
          Privy::SolanaTokenProgramInstructionConditionField::TaggedSymbol
        )
      CLOSE_ACCOUNT_AUTHORITY =
        T.let(
          :"CloseAccount.authority",
          Privy::SolanaTokenProgramInstructionConditionField::TaggedSymbol
        )
      INITIALIZE_ACCOUNT3_ACCOUNT =
        T.let(
          :"InitializeAccount3.account",
          Privy::SolanaTokenProgramInstructionConditionField::TaggedSymbol
        )
      INITIALIZE_ACCOUNT3_MINT =
        T.let(
          :"InitializeAccount3.mint",
          Privy::SolanaTokenProgramInstructionConditionField::TaggedSymbol
        )
      INITIALIZE_ACCOUNT3_OWNER =
        T.let(
          :"InitializeAccount3.owner",
          Privy::SolanaTokenProgramInstructionConditionField::TaggedSymbol
        )

      sig do
        override.returns(
          T::Array[
            Privy::SolanaTokenProgramInstructionConditionField::TaggedSymbol
          ]
        )
      end
      def self.values
      end
    end
  end
end
