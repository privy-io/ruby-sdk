# frozen_string_literal: true

module Privy
  module Models
    class SparkCurrencyAmount < Privy::Internal::Type::BaseModel
      # @!attribute original_unit
      #
      #   @return [String]
      required :original_unit, String

      # @!attribute original_value
      #
      #   @return [Float]
      required :original_value, Float

      # @!method initialize(original_unit:, original_value:)
      #   A currency amount with its original value and unit.
      #
      #   @param original_unit [String]
      #   @param original_value [Float]
    end
  end
end
