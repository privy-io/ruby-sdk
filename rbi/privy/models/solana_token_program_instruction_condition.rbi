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

      # Supported fields for Solana Token Program conditions including Transfer,
      # TransferChecked, Burn, MintTo, CloseAccount, and InitializeAccount3 instruction
      # fields.
      sig do
        returns(Privy::SolanaTokenProgramInstructionConditionField::OrSymbol)
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
          field: Privy::SolanaTokenProgramInstructionConditionField::OrSymbol,
          field_source:
            Privy::SolanaTokenProgramInstructionCondition::FieldSource::OrSymbol,
          operator: Privy::ConditionOperator::OrSymbol,
          value: Privy::ConditionValue::Variants
        ).returns(T.attached_class)
      end
      def self.new(
        # Supported fields for Solana Token Program conditions including Transfer,
        # TransferChecked, Burn, MintTo, CloseAccount, and InitializeAccount3 instruction
        # fields.
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
            field: Privy::SolanaTokenProgramInstructionConditionField::OrSymbol,
            field_source:
              Privy::SolanaTokenProgramInstructionCondition::FieldSource::OrSymbol,
            operator: Privy::ConditionOperator::OrSymbol,
            value: Privy::ConditionValue::Variants
          }
        )
      end
      def to_hash
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
