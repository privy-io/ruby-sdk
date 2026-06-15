# typed: strong

module Privy
  module Models
    # Operator to use for policy conditions.
    module ConditionOperator
      extend Privy::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Privy::ConditionOperator) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      EQ = T.let(:eq, Privy::ConditionOperator::TaggedSymbol)
      GT = T.let(:gt, Privy::ConditionOperator::TaggedSymbol)
      GTE = T.let(:gte, Privy::ConditionOperator::TaggedSymbol)
      LT = T.let(:lt, Privy::ConditionOperator::TaggedSymbol)
      LTE = T.let(:lte, Privy::ConditionOperator::TaggedSymbol)
      IN = T.let(:in, Privy::ConditionOperator::TaggedSymbol)
      IN_CONDITION_SET =
        T.let(:in_condition_set, Privy::ConditionOperator::TaggedSymbol)
      CONTAINS = T.let(:contains, Privy::ConditionOperator::TaggedSymbol)
      STARTS_WITH = T.let(:starts_with, Privy::ConditionOperator::TaggedSymbol)
      ENDS_WITH = T.let(:ends_with, Privy::ConditionOperator::TaggedSymbol)

      sig { override.returns(T::Array[Privy::ConditionOperator::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
