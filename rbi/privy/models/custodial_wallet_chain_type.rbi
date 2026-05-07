# typed: strong

module Privy
  module Models
    # The chain type of the custodial wallet.
    module CustodialWalletChainType
      extend Privy::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, Privy::CustodialWalletChainType) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      ETHEREUM = T.let(:ethereum, Privy::CustodialWalletChainType::TaggedSymbol)
      SOLANA = T.let(:solana, Privy::CustodialWalletChainType::TaggedSymbol)

      sig do
        override.returns(
          T::Array[Privy::CustodialWalletChainType::TaggedSymbol]
        )
      end
      def self.values
      end
    end
  end
end
