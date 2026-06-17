# typed: strong

module Privy
  module Models
    # The chain type of the wallet to import. Supports `ethereum`, `solana`,
    # `stellar`, `tron`, `sui`, and `aptos`.
    module WalletImportSupportedChains
      extend Privy::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, Privy::WalletImportSupportedChains) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      ETHEREUM =
        T.let(:ethereum, Privy::WalletImportSupportedChains::TaggedSymbol)
      SOLANA = T.let(:solana, Privy::WalletImportSupportedChains::TaggedSymbol)
      STELLAR =
        T.let(:stellar, Privy::WalletImportSupportedChains::TaggedSymbol)
      TRON = T.let(:tron, Privy::WalletImportSupportedChains::TaggedSymbol)
      SUI = T.let(:sui, Privy::WalletImportSupportedChains::TaggedSymbol)
      APTOS = T.let(:aptos, Privy::WalletImportSupportedChains::TaggedSymbol)

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
