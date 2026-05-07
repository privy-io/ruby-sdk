# typed: strong

module Privy
  module Models
    # Operator to use for SUI transaction command conditions. Only 'eq' and 'in' are
    # supported for command names.
    module SuiTransactionCommandOperator
      extend Privy::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, Privy::SuiTransactionCommandOperator) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      EQ = T.let(:eq, Privy::SuiTransactionCommandOperator::TaggedSymbol)
      IN = T.let(:in, Privy::SuiTransactionCommandOperator::TaggedSymbol)

      sig do
        override.returns(
          T::Array[Privy::SuiTransactionCommandOperator::TaggedSymbol]
        )
      end
      def self.values
      end
    end
  end
end
