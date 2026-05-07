# typed: strong

module Privy
  module Models
    # Whether to use the sandbox or production environment for fiat onramp.
    module FiatOnrampEnvironment
      extend Privy::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, Privy::FiatOnrampEnvironment) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      SANDBOX = T.let(:sandbox, Privy::FiatOnrampEnvironment::TaggedSymbol)
      PRODUCTION =
        T.let(:production, Privy::FiatOnrampEnvironment::TaggedSymbol)

      sig do
        override.returns(T::Array[Privy::FiatOnrampEnvironment::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end
