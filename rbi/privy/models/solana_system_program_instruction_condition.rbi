# typed: strong

module Privy
  module Models
    class SolanaSystemProgramInstructionCondition < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::SolanaSystemProgramInstructionCondition,
            Privy::Internal::AnyHash
          )
        end

      # Supported fields for Solana System Program conditions including Transfer
      # instruction fields.
      sig do
        returns(Privy::SolanaSystemProgramInstructionConditionField::OrSymbol)
      end
      attr_accessor :field

      sig do
        returns(
          Privy::SolanaSystemProgramInstructionCondition::FieldSource::OrSymbol
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

      # Solana System Program attributes, including more granular Transfer instruction
      # fields.
      sig do
        params(
          field: Privy::SolanaSystemProgramInstructionConditionField::OrSymbol,
          field_source:
            Privy::SolanaSystemProgramInstructionCondition::FieldSource::OrSymbol,
          operator: Privy::ConditionOperator::OrSymbol,
          value: Privy::ConditionValue::Variants
        ).returns(T.attached_class)
      end
      def self.new(
        # Supported fields for Solana System Program conditions including Transfer
        # instruction fields.
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
              Privy::SolanaSystemProgramInstructionConditionField::OrSymbol,
            field_source:
              Privy::SolanaSystemProgramInstructionCondition::FieldSource::OrSymbol,
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
              Privy::SolanaSystemProgramInstructionCondition::FieldSource
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SOLANA_SYSTEM_PROGRAM_INSTRUCTION =
          T.let(
            :solana_system_program_instruction,
            Privy::SolanaSystemProgramInstructionCondition::FieldSource::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::SolanaSystemProgramInstructionCondition::FieldSource::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
