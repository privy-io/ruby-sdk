# frozen_string_literal: true

module Privy
  module Models
    class ConditionSetItemValueInput < Privy::Internal::Type::BaseModel
      # @!attribute value
      #
      #   @return [String]
      required :value, String

      # @!attribute name
      #   Optional label for the item, unique within the condition set ignoring case.
      #
      #   @return [String, nil]
      optional :name, String

      # @!method initialize(value:, name: nil)
      #   A value to add to a condition set, with an optional name.
      #
      #   @param value [String]
      #
      #   @param name [String] Optional label for the item, unique within the condition set ignoring case.
    end
  end
end
