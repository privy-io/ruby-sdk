# typed: strong

module Privy
  module Models
    class SolanaTokenProgramInstructionCondition < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::SolanaTokenProgramInstructionCondition,
            Privy::Internal::AnyHash
          )
        end

      sig do
        returns(Privy::SolanaTokenProgramInstructionCondition::Field::OrSymbol)
      end
      attr_accessor :field

      sig do
        returns(
          Privy::SolanaTokenProgramInstructionCondition::FieldSource::OrSymbol
        )
      end
      attr_accessor :field_source

      # Operator to use for policy conditions.
      sig { returns(Privy::ConditionOperator::OrSymbol) }
      attr_accessor :operator

      # Value to compare against in a policy condition. Can be a single string or an
      # array of strings.
      sig { returns(Privy::ConditionValue::Variants) }
      attr_accessor :value

      # Solana Token Program attributes, including more granular TransferChecked
      # instruction fields.
      sig do
        params(
          field: Privy::SolanaTokenProgramInstructionCondition::Field::OrSymbol,
          field_source:
            Privy::SolanaTokenProgramInstructionCondition::FieldSource::OrSymbol,
          operator: Privy::ConditionOperator::OrSymbol,
          value: Privy::ConditionValue::Variants
        ).returns(T.attached_class)
      end
      def self.new(
        field:,
        field_source:,
        # Operator to use for policy conditions.
        operator:,
        # Value to compare against in a policy condition. Can be a single string or an
        # array of strings.
        value:
      )
      end

      sig do
        override.returns(
          {
            field:
              Privy::SolanaTokenProgramInstructionCondition::Field::OrSymbol,
            field_source:
              Privy::SolanaTokenProgramInstructionCondition::FieldSource::OrSymbol,
            operator: Privy::ConditionOperator::OrSymbol,
            value: Privy::ConditionValue::Variants
          }
        )
      end
      def to_hash
      end

      module Field
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::SolanaTokenProgramInstructionCondition::Field)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        INSTRUCTION_NAME =
          T.let(
            :instructionName,
            Privy::SolanaTokenProgramInstructionCondition::Field::TaggedSymbol
          )
        TRANSFER_SOURCE =
          T.let(
            :"Transfer.source",
            Privy::SolanaTokenProgramInstructionCondition::Field::TaggedSymbol
          )
        TRANSFER_DESTINATION =
          T.let(
            :"Transfer.destination",
            Privy::SolanaTokenProgramInstructionCondition::Field::TaggedSymbol
          )
        TRANSFER_AUTHORITY =
          T.let(
            :"Transfer.authority",
            Privy::SolanaTokenProgramInstructionCondition::Field::TaggedSymbol
          )
        TRANSFER_AMOUNT =
          T.let(
            :"Transfer.amount",
            Privy::SolanaTokenProgramInstructionCondition::Field::TaggedSymbol
          )
        TRANSFER_CHECKED_SOURCE =
          T.let(
            :"TransferChecked.source",
            Privy::SolanaTokenProgramInstructionCondition::Field::TaggedSymbol
          )
        TRANSFER_CHECKED_DESTINATION =
          T.let(
            :"TransferChecked.destination",
            Privy::SolanaTokenProgramInstructionCondition::Field::TaggedSymbol
          )
        TRANSFER_CHECKED_AUTHORITY =
          T.let(
            :"TransferChecked.authority",
            Privy::SolanaTokenProgramInstructionCondition::Field::TaggedSymbol
          )
        TRANSFER_CHECKED_AMOUNT =
          T.let(
            :"TransferChecked.amount",
            Privy::SolanaTokenProgramInstructionCondition::Field::TaggedSymbol
          )
        TRANSFER_CHECKED_MINT =
          T.let(
            :"TransferChecked.mint",
            Privy::SolanaTokenProgramInstructionCondition::Field::TaggedSymbol
          )
        BURN_ACCOUNT =
          T.let(
            :"Burn.account",
            Privy::SolanaTokenProgramInstructionCondition::Field::TaggedSymbol
          )
        BURN_MINT =
          T.let(
            :"Burn.mint",
            Privy::SolanaTokenProgramInstructionCondition::Field::TaggedSymbol
          )
        BURN_AUTHORITY =
          T.let(
            :"Burn.authority",
            Privy::SolanaTokenProgramInstructionCondition::Field::TaggedSymbol
          )
        BURN_AMOUNT =
          T.let(
            :"Burn.amount",
            Privy::SolanaTokenProgramInstructionCondition::Field::TaggedSymbol
          )
        MINT_TO_MINT =
          T.let(
            :"MintTo.mint",
            Privy::SolanaTokenProgramInstructionCondition::Field::TaggedSymbol
          )
        MINT_TO_ACCOUNT =
          T.let(
            :"MintTo.account",
            Privy::SolanaTokenProgramInstructionCondition::Field::TaggedSymbol
          )
        MINT_TO_AUTHORITY =
          T.let(
            :"MintTo.authority",
            Privy::SolanaTokenProgramInstructionCondition::Field::TaggedSymbol
          )
        MINT_TO_AMOUNT =
          T.let(
            :"MintTo.amount",
            Privy::SolanaTokenProgramInstructionCondition::Field::TaggedSymbol
          )
        CLOSE_ACCOUNT_ACCOUNT =
          T.let(
            :"CloseAccount.account",
            Privy::SolanaTokenProgramInstructionCondition::Field::TaggedSymbol
          )
        CLOSE_ACCOUNT_DESTINATION =
          T.let(
            :"CloseAccount.destination",
            Privy::SolanaTokenProgramInstructionCondition::Field::TaggedSymbol
          )
        CLOSE_ACCOUNT_AUTHORITY =
          T.let(
            :"CloseAccount.authority",
            Privy::SolanaTokenProgramInstructionCondition::Field::TaggedSymbol
          )
        INITIALIZE_ACCOUNT3_ACCOUNT =
          T.let(
            :"InitializeAccount3.account",
            Privy::SolanaTokenProgramInstructionCondition::Field::TaggedSymbol
          )
        INITIALIZE_ACCOUNT3_MINT =
          T.let(
            :"InitializeAccount3.mint",
            Privy::SolanaTokenProgramInstructionCondition::Field::TaggedSymbol
          )
        INITIALIZE_ACCOUNT3_OWNER =
          T.let(
            :"InitializeAccount3.owner",
            Privy::SolanaTokenProgramInstructionCondition::Field::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::SolanaTokenProgramInstructionCondition::Field::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      module FieldSource
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Privy::SolanaTokenProgramInstructionCondition::FieldSource
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SOLANA_TOKEN_PROGRAM_INSTRUCTION =
          T.let(
            :solana_token_program_instruction,
            Privy::SolanaTokenProgramInstructionCondition::FieldSource::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::SolanaTokenProgramInstructionCondition::FieldSource::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
