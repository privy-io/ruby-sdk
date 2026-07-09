# typed: strong

module Privy
  module Models
    # Supported yield/lending protocol providers.
    module EthereumYieldProvider
      extend Privy::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, Privy::EthereumYieldProvider) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      MORPHO = T.let(:morpho, Privy::EthereumYieldProvider::TaggedSymbol)
      AAVE = T.let(:aave, Privy::EthereumYieldProvider::TaggedSymbol)
      VEDA = T.let(:veda, Privy::EthereumYieldProvider::TaggedSymbol)

      sig do
        override.returns(T::Array[Privy::EthereumYieldProvider::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end
