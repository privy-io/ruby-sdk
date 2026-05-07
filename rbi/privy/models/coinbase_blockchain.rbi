# typed: strong

module Privy
  module Models
    # A blockchain supported by Coinbase on-ramp.
    module CoinbaseBlockchain
      extend Privy::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Privy::CoinbaseBlockchain) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      ETHEREUM = T.let(:ethereum, Privy::CoinbaseBlockchain::TaggedSymbol)
      BITCOIN = T.let(:bitcoin, Privy::CoinbaseBlockchain::TaggedSymbol)
      BASE = T.let(:base, Privy::CoinbaseBlockchain::TaggedSymbol)
      AVACCHAIN = T.let(:avacchain, Privy::CoinbaseBlockchain::TaggedSymbol)
      OPTIMISM = T.let(:optimism, Privy::CoinbaseBlockchain::TaggedSymbol)
      SOLANA = T.let(:solana, Privy::CoinbaseBlockchain::TaggedSymbol)
      POLYGON = T.let(:polygon, Privy::CoinbaseBlockchain::TaggedSymbol)
      ARBITRUM = T.let(:arbitrum, Privy::CoinbaseBlockchain::TaggedSymbol)
      STELLAR = T.let(:stellar, Privy::CoinbaseBlockchain::TaggedSymbol)
      MONAD = T.let(:monad, Privy::CoinbaseBlockchain::TaggedSymbol)

      sig do
        override.returns(T::Array[Privy::CoinbaseBlockchain::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end
