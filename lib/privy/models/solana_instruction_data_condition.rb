# frozen_string_literal: true

module Privy
  module Models
    class SolanaInstructionDataCondition < Privy::Internal::Type::BaseModel
      # @!attribute field
      #
      #   @return [String]
      required :field, String

      # @!attribute field_source
      #
      #   @return [Symbol, Privy::Models::SolanaInstructionDataCondition::FieldSource]
      required :field_source, enum: -> { Privy::SolanaInstructionDataCondition::FieldSource }

      # @!attribute idl
      #   A modern Anchor IDL containing selected instructions and their complete type
      #   dependencies.
      #
      #   @return [Hash{Symbol=>Object}]
      required :idl, Privy::Internal::Type::HashOf[Privy::Internal::Type::Unknown]

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

      # @!method initialize(field:, field_source:, idl:, operator:, value:)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::SolanaInstructionDataCondition} for more details.
      #
      #   Solana instruction arguments and named accounts interpreted using an inline
      #   Anchor IDL.
      #
      #   @param field [String]
      #
      #   @param field_source [Symbol, Privy::Models::SolanaInstructionDataCondition::FieldSource]
      #
      #   @param idl [Hash{Symbol=>Object}] A modern Anchor IDL containing selected instructions and their complete type dep
      #
      #   @param operator [Symbol, Privy::Models::ConditionOperator] Operator to use for policy conditions.
      #
      #   @param value [String, Array<String>] Value to compare against in a policy condition. Can be a single string or an arr

      # @see Privy::Models::SolanaInstructionDataCondition#field_source
      module FieldSource
        extend Privy::Internal::Type::Enum

        SOLANA_INSTRUCTION_DATA = :solana_instruction_data

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
