# typed: strong

module Privy
  module Models
    # The wallet chain types that are not first class chains.
    module ExtendedChainType
      extend Privy::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Privy::ExtendedChainType) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      COSMOS = T.let(:cosmos, Privy::ExtendedChainType::TaggedSymbol)
      STELLAR = T.let(:stellar, Privy::ExtendedChainType::TaggedSymbol)
      SUI = T.let(:sui, Privy::ExtendedChainType::TaggedSymbol)
      APTOS = T.let(:aptos, Privy::ExtendedChainType::TaggedSymbol)
      MOVEMENT = T.let(:movement, Privy::ExtendedChainType::TaggedSymbol)
      TRON = T.let(:tron, Privy::ExtendedChainType::TaggedSymbol)
      BITCOIN_SEGWIT =
        T.let(:"bitcoin-segwit", Privy::ExtendedChainType::TaggedSymbol)
      BITCOIN_TAPROOT =
        T.let(:"bitcoin-taproot", Privy::ExtendedChainType::TaggedSymbol)
      PEARL = T.let(:pearl, Privy::ExtendedChainType::TaggedSymbol)
      NEAR = T.let(:near, Privy::ExtendedChainType::TaggedSymbol)
      TON = T.let(:ton, Privy::ExtendedChainType::TaggedSymbol)
      STARKNET = T.let(:starknet, Privy::ExtendedChainType::TaggedSymbol)
      SPARK = T.let(:spark, Privy::ExtendedChainType::TaggedSymbol)

      sig { override.returns(T::Array[Privy::ExtendedChainType::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
