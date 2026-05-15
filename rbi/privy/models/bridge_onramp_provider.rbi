# typed: strong

module Privy
  module Models
    # Bridge provider variant — production or sandbox.
    module BridgeOnrampProvider
      extend Privy::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Privy::BridgeOnrampProvider) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      BRIDGE = T.let(:bridge, Privy::BridgeOnrampProvider::TaggedSymbol)
      BRIDGE_SANDBOX =
        T.let(:"bridge-sandbox", Privy::BridgeOnrampProvider::TaggedSymbol)

      sig do
        override.returns(T::Array[Privy::BridgeOnrampProvider::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end
