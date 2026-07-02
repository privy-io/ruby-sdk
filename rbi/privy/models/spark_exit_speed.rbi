# typed: strong

module Privy
  module Models
    # The exit speed for a cooperative withdrawal from Spark to L1.
    module SparkExitSpeed
      extend Privy::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Privy::SparkExitSpeed) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      FAST = T.let(:FAST, Privy::SparkExitSpeed::TaggedSymbol)
      MEDIUM = T.let(:MEDIUM, Privy::SparkExitSpeed::TaggedSymbol)
      SLOW = T.let(:SLOW, Privy::SparkExitSpeed::TaggedSymbol)

      sig { override.returns(T::Array[Privy::SparkExitSpeed::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
