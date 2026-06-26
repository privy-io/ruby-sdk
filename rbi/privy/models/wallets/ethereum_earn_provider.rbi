# typed: strong

module Privy
  module Models
    module Wallets
      # Supported earn provider protocols.
      module EthereumEarnProvider
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Privy::Wallets::EthereumEarnProvider) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        MORPHO =
          T.let(:morpho, Privy::Wallets::EthereumEarnProvider::TaggedSymbol)
        AAVE = T.let(:aave, Privy::Wallets::EthereumEarnProvider::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Privy::Wallets::EthereumEarnProvider::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
