# typed: strong

module Privy
  module Models
    # The chain of the custodial wallet.
    module CustodialWalletChain
      extend Privy::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Privy::CustodialWalletChain) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      BASE = T.let(:base, Privy::CustodialWalletChain::TaggedSymbol)
      SOLANA = T.let(:solana, Privy::CustodialWalletChain::TaggedSymbol)
      TEMPO = T.let(:tempo, Privy::CustodialWalletChain::TaggedSymbol)

      sig do
        override.returns(T::Array[Privy::CustodialWalletChain::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end
