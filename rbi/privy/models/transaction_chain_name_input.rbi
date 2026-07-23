# typed: strong

module Privy
  module Models
    # Chains supported for transaction history queries.
    module TransactionChainNameInput
      extend Privy::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, Privy::TransactionChainNameInput) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      ETHEREUM =
        T.let(:ethereum, Privy::TransactionChainNameInput::TaggedSymbol)
      ARBITRUM =
        T.let(:arbitrum, Privy::TransactionChainNameInput::TaggedSymbol)
      AVALANCHE =
        T.let(:avalanche, Privy::TransactionChainNameInput::TaggedSymbol)
      BASE = T.let(:base, Privy::TransactionChainNameInput::TaggedSymbol)
      BASE_SEPOLIA =
        T.let(:base_sepolia, Privy::TransactionChainNameInput::TaggedSymbol)
      BSC = T.let(:bsc, Privy::TransactionChainNameInput::TaggedSymbol)
      TEMPO = T.let(:tempo, Privy::TransactionChainNameInput::TaggedSymbol)
      LINEA = T.let(:linea, Privy::TransactionChainNameInput::TaggedSymbol)
      OPTIMISM =
        T.let(:optimism, Privy::TransactionChainNameInput::TaggedSymbol)
      POLYGON = T.let(:polygon, Privy::TransactionChainNameInput::TaggedSymbol)
      SOLANA = T.let(:solana, Privy::TransactionChainNameInput::TaggedSymbol)
      SEPOLIA = T.let(:sepolia, Privy::TransactionChainNameInput::TaggedSymbol)

      sig do
        override.returns(
          T::Array[Privy::TransactionChainNameInput::TaggedSymbol]
        )
      end
      def self.values
      end
    end
  end
end
