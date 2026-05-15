# typed: strong

module Privy
  module Models
    # Strategy for selecting outputs in a Spark token transfer.
    module SparkOutputSelectionStrategy
      extend Privy::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, Privy::SparkOutputSelectionStrategy) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      SMALL_FIRST =
        T.let(:SMALL_FIRST, Privy::SparkOutputSelectionStrategy::TaggedSymbol)
      LARGE_FIRST =
        T.let(:LARGE_FIRST, Privy::SparkOutputSelectionStrategy::TaggedSymbol)

      sig do
        override.returns(
          T::Array[Privy::SparkOutputSelectionStrategy::TaggedSymbol]
        )
      end
      def self.values
      end
    end
  end
end
