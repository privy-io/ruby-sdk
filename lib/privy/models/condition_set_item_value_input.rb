# frozen_string_literal: true

module Privy
  module Models
    class ConditionSetItemValueInput < Privy::Internal::Type::BaseModel
      # @!attribute value
      #
      #   @return [String]
      required :value, String

      # @!method initialize(value:)
      #   A single value to add to a condition set.
      #
      #   @param value [String]
    end
  end
end
