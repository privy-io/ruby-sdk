# typed: strong

module Privy
  module Models
    # Supported fiat orchestration providers.
    module OrchestrationProvider
      extend Privy::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, Privy::OrchestrationProvider) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      BRIDGE = T.let(:bridge, Privy::OrchestrationProvider::TaggedSymbol)

      sig do
        override.returns(T::Array[Privy::OrchestrationProvider::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end
