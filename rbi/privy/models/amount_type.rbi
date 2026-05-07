# typed: strong

module Privy
  module Models
    # Whether the amount refers to the input token or output token.
    module AmountType
      extend Privy::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Privy::AmountType) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      EXACT_INPUT = T.let(:exact_input, Privy::AmountType::TaggedSymbol)
      EXACT_OUTPUT = T.let(:exact_output, Privy::AmountType::TaggedSymbol)

      sig { override.returns(T::Array[Privy::AmountType::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
