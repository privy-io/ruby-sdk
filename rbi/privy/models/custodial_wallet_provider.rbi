# typed: strong

module Privy
  module Models
    # The provider of the custodial wallet.
    module CustodialWalletProvider
      extend Privy::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, Privy::CustodialWalletProvider) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      BRIDGE = T.let(:bridge, Privy::CustodialWalletProvider::TaggedSymbol)

      sig do
        override.returns(T::Array[Privy::CustodialWalletProvider::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end
