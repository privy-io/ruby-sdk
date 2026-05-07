# frozen_string_literal: true

module Privy
  module Models
    # Operator to use for SUI transaction command conditions. Only 'eq' and 'in' are
    # supported for command names.
    module SuiTransactionCommandOperator
      extend Privy::Internal::Type::Enum

      EQ = :eq
      IN = :in

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
