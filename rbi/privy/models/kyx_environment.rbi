# typed: strong

module Privy
  module Models
    # Provider environment (production or sandbox).
    module KyxEnvironment
      extend Privy::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Privy::KyxEnvironment) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      PRODUCTION = T.let(:production, Privy::KyxEnvironment::TaggedSymbol)
      SANDBOX = T.let(:sandbox, Privy::KyxEnvironment::TaggedSymbol)

      sig { override.returns(T::Array[Privy::KyxEnvironment::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
