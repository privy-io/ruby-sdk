# typed: strong

module Privy
  module Models
    # Valid set of onramp providers
    module OnrampProvider
      extend Privy::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Privy::OnrampProvider) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      BRIDGE = T.let(:bridge, Privy::OnrampProvider::TaggedSymbol)
      BRIDGE_SANDBOX =
        T.let(:"bridge-sandbox", Privy::OnrampProvider::TaggedSymbol)

      sig { override.returns(T::Array[Privy::OnrampProvider::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
