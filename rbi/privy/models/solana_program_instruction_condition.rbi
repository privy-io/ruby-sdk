# typed: strong

module Privy
  module Models
    class SolanaProgramInstructionCondition < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::SolanaProgramInstructionCondition,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(Privy::SolanaProgramInstructionCondition::Field::OrSymbol) }
      attr_accessor :field

      sig do
        returns(Privy::SolanaProgramInstructionCondition::FieldSource::OrSymbol)
      end
      attr_accessor :field_source

      # Operator to use for policy conditions.
      sig { returns(Privy::ConditionOperator::OrSymbol) }
      attr_accessor :operator

      # Value to compare against in a policy condition. Can be a single string or an
      # array of strings.
      sig { returns(Privy::ConditionValue::Variants) }
      attr_accessor :value

      # Solana Program attributes, enables allowlisting Solana Programs.
      sig do
        params(
          field: Privy::SolanaProgramInstructionCondition::Field::OrSymbol,
          field_source:
            Privy::SolanaProgramInstructionCondition::FieldSource::OrSymbol,
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
            field: Privy::SolanaProgramInstructionCondition::Field::OrSymbol,
            field_source:
              Privy::SolanaProgramInstructionCondition::FieldSource::OrSymbol,
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
            T.all(Symbol, Privy::SolanaProgramInstructionCondition::Field)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PROGRAM_ID =
          T.let(
            :programId,
            Privy::SolanaProgramInstructionCondition::Field::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::SolanaProgramInstructionCondition::Field::TaggedSymbol
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
            T.all(Symbol, Privy::SolanaProgramInstructionCondition::FieldSource)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SOLANA_PROGRAM_INSTRUCTION =
          T.let(
            :solana_program_instruction,
            Privy::SolanaProgramInstructionCondition::FieldSource::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::SolanaProgramInstructionCondition::FieldSource::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
