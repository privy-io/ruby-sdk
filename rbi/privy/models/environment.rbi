# typed: strong

module Privy
  module Models
    # The Privy API environment.
    module Environment
      extend Privy::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Privy::Environment) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      SANDBOX = T.let(:sandbox, Privy::Environment::TaggedSymbol)
      PRODUCTION = T.let(:production, Privy::Environment::TaggedSymbol)

      sig { override.returns(T::Array[Privy::Environment::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
