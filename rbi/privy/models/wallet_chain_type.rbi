# typed: strong

module Privy
  module Models
    # The wallet chain types.
    module WalletChainType
      extend Privy::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Privy::WalletChainType) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      ETHEREUM = T.let(:ethereum, Privy::WalletChainType::TaggedSymbol)
      SOLANA = T.let(:solana, Privy::WalletChainType::TaggedSymbol)
      COSMOS = T.let(:cosmos, Privy::WalletChainType::TaggedSymbol)
      STELLAR = T.let(:stellar, Privy::WalletChainType::TaggedSymbol)
      SUI = T.let(:sui, Privy::WalletChainType::TaggedSymbol)
      APTOS = T.let(:aptos, Privy::WalletChainType::TaggedSymbol)
      MOVEMENT = T.let(:movement, Privy::WalletChainType::TaggedSymbol)
      TRON = T.let(:tron, Privy::WalletChainType::TaggedSymbol)
      BITCOIN_SEGWIT =
        T.let(:"bitcoin-segwit", Privy::WalletChainType::TaggedSymbol)
      BITCOIN_TAPROOT =
        T.let(:"bitcoin-taproot", Privy::WalletChainType::TaggedSymbol)
      PEARL = T.let(:pearl, Privy::WalletChainType::TaggedSymbol)
      NEAR = T.let(:near, Privy::WalletChainType::TaggedSymbol)
      TON = T.let(:ton, Privy::WalletChainType::TaggedSymbol)
      STARKNET = T.let(:starknet, Privy::WalletChainType::TaggedSymbol)
      SPARK = T.let(:spark, Privy::WalletChainType::TaggedSymbol)

      sig { override.returns(T::Array[Privy::WalletChainType::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
