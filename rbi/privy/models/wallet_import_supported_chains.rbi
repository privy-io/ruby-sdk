# typed: strong

module Privy
  module Models
    # The chain type of the wallet to import. Currently supports `ethereum` and
    # `solana`.
    module WalletImportSupportedChains
      extend Privy::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, Privy::WalletImportSupportedChains) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      ETHEREUM =
        T.let(:ethereum, Privy::WalletImportSupportedChains::TaggedSymbol)
      SOLANA = T.let(:solana, Privy::WalletImportSupportedChains::TaggedSymbol)

      sig do
        override.returns(
          T::Array[Privy::WalletImportSupportedChains::TaggedSymbol]
        )
      end
      def self.values
      end
    end
  end
end
