# frozen_string_literal: true

module Privy
  module Models
    # Whether the amount refers to the input token or output token.
    module AmountType
      extend Privy::Internal::Type::Enum

      EXACT_INPUT = :exact_input
      EXACT_OUTPUT = :exact_output

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
