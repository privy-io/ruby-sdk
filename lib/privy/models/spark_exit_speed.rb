# frozen_string_literal: true

module Privy
  module Models
    # The exit speed for a cooperative withdrawal from Spark to L1.
    module SparkExitSpeed
      extend Privy::Internal::Type::Enum

      FAST = :FAST
      MEDIUM = :MEDIUM
      SLOW = :SLOW

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
