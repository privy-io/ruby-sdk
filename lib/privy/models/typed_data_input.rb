# frozen_string_literal: true

module Privy
  module Models
    class TypedDataInput < Privy::Internal::Type::BaseModel
      # @!attribute primary_type
      #
      #   @return [String]
      required :primary_type, String

      # @!attribute types
      #   The type definitions for EIP-712 typed data signing.
      #
      #   @return [Hash{Symbol=>Array<Privy::Models::TypedDataTypeFieldInput>}]
      required :types,
               -> { Privy::Internal::Type::HashOf[Privy::Internal::Type::ArrayOf[Privy::TypedDataTypeFieldInput]] }

      # @!method initialize(primary_type:, types:)
      #   The typed data structure containing EIP-712 types and the primary type for typed
      #   data message policy conditions.
      #
      #   @param primary_type [String]
      #
      #   @param types [Hash{Symbol=>Array<Privy::Models::TypedDataTypeFieldInput>}] The type definitions for EIP-712 typed data signing.
    end
  end
end
