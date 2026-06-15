# frozen_string_literal: true

module Privy
  module Models
    # Operator to use for policy conditions.
    module ConditionOperator
      extend Privy::Internal::Type::Enum

      EQ = :eq
      GT = :gt
      GTE = :gte
      LT = :lt
      LTE = :lte
      IN = :in
      IN_CONDITION_SET = :in_condition_set
      CONTAINS = :contains
      STARTS_WITH = :starts_with
      ENDS_WITH = :ends_with

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
