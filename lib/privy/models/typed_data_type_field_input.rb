# frozen_string_literal: true

module Privy
  module Models
    class TypedDataTypeFieldInput < Privy::Internal::Type::BaseModel
      # @!attribute name
      #
      #   @return [String]
      required :name, String

      # @!attribute type
      #
      #   @return [String]
      required :type, String

      # @!method initialize(name:, type:)
      #   A single field definition in an EIP-712 typed data type.
      #
      #   @param name [String]
      #   @param type [String]
    end
  end
end
