# frozen_string_literal: true

module Privy
  module Models
    # Strategy for selecting outputs in a Spark token transfer.
    module SparkOutputSelectionStrategy
      extend Privy::Internal::Type::Enum

      SMALL_FIRST = :SMALL_FIRST
      LARGE_FIRST = :LARGE_FIRST

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
