# typed: strong

module Privy
  module Models
    class SolanaInstructionDataCondition < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::SolanaInstructionDataCondition, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :field

      sig do
        returns(Privy::SolanaInstructionDataCondition::FieldSource::OrSymbol)
      end
      attr_accessor :field_source

      # A modern Anchor IDL containing selected instructions and their complete type
      # dependencies.
      sig { returns(T::Hash[Symbol, T.anything]) }
      attr_accessor :idl

      # Operator to use for policy conditions.
      sig { returns(Privy::ConditionOperator::OrSymbol) }
      attr_accessor :operator

      # Value to compare against in a policy condition. Can be a single string or an
      # array of strings.
      sig { returns(Privy::ConditionValue::Variants) }
      attr_accessor :value

      # Solana instruction arguments and named accounts interpreted using an inline
      # Anchor IDL.
      sig do
        params(
          field: String,
          field_source:
            Privy::SolanaInstructionDataCondition::FieldSource::OrSymbol,
          idl: T::Hash[Symbol, T.anything],
          operator: Privy::ConditionOperator::OrSymbol,
          value: Privy::ConditionValue::Variants
        ).returns(T.attached_class)
      end
      def self.new(
        field:,
        field_source:,
        # A modern Anchor IDL containing selected instructions and their complete type
        # dependencies.
        idl:,
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
            field: String,
            field_source:
              Privy::SolanaInstructionDataCondition::FieldSource::OrSymbol,
            idl: T::Hash[Symbol, T.anything],
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
            T.all(Symbol, Privy::SolanaInstructionDataCondition::FieldSource)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SOLANA_INSTRUCTION_DATA =
          T.let(
            :solana_instruction_data,
            Privy::SolanaInstructionDataCondition::FieldSource::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::SolanaInstructionDataCondition::FieldSource::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
