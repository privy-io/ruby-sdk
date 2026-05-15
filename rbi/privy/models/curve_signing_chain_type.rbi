# typed: strong

module Privy
  module Models
    # The wallet chain types that support curve-based signing.
    module CurveSigningChainType
      extend Privy::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, Privy::CurveSigningChainType) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      COSMOS = T.let(:cosmos, Privy::CurveSigningChainType::TaggedSymbol)
      STELLAR = T.let(:stellar, Privy::CurveSigningChainType::TaggedSymbol)
      SUI = T.let(:sui, Privy::CurveSigningChainType::TaggedSymbol)
      APTOS = T.let(:aptos, Privy::CurveSigningChainType::TaggedSymbol)
      MOVEMENT = T.let(:movement, Privy::CurveSigningChainType::TaggedSymbol)
      TRON = T.let(:tron, Privy::CurveSigningChainType::TaggedSymbol)
      BITCOIN_SEGWIT =
        T.let(:"bitcoin-segwit", Privy::CurveSigningChainType::TaggedSymbol)
      BITCOIN_TAPROOT =
        T.let(:"bitcoin-taproot", Privy::CurveSigningChainType::TaggedSymbol)
      PEARL = T.let(:pearl, Privy::CurveSigningChainType::TaggedSymbol)
      NEAR = T.let(:near, Privy::CurveSigningChainType::TaggedSymbol)
      TON = T.let(:ton, Privy::CurveSigningChainType::TaggedSymbol)
      STARKNET = T.let(:starknet, Privy::CurveSigningChainType::TaggedSymbol)

      sig do
        override.returns(T::Array[Privy::CurveSigningChainType::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end
