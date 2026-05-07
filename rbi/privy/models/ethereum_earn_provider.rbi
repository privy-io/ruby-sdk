# typed: strong

module Privy
  module Models
    # Supported earn provider protocols.
    module EthereumEarnProvider
      extend Privy::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Privy::EthereumEarnProvider) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      MORPHO = T.let(:morpho, Privy::EthereumEarnProvider::TaggedSymbol)
      AAVE = T.let(:aave, Privy::EthereumEarnProvider::TaggedSymbol)

      sig do
        override.returns(T::Array[Privy::EthereumEarnProvider::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end
