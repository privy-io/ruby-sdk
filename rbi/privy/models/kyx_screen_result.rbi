# typed: strong

module Privy
  module Models
    # Outcome of a screen performed under KYC/KYB reliance.
    module KyxScreenResult
      extend Privy::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Privy::KyxScreenResult) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      PASSED = T.let(:passed, Privy::KyxScreenResult::TaggedSymbol)
      FAILED = T.let(:failed, Privy::KyxScreenResult::TaggedSymbol)

      sig { override.returns(T::Array[Privy::KyxScreenResult::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
