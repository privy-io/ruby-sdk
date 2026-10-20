# typed: strong

module Privy
  module Models
    # The wallet chain types supported in digital asset accounts.
    module AccountWalletChainType
      extend Privy::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(Privy::AccountWalletChainType::TaggedSymbol, String)
        end

      sig do
        override.returns(T::Array[Privy::AccountWalletChainType::Variants])
      end
      def self.variants
      end

      TaggedSymbol =
        T.type_alias { T.all(Symbol, Privy::AccountWalletChainType) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      ETHEREUM = T.let(:ethereum, Privy::AccountWalletChainType::TaggedSymbol)
      SOLANA = T.let(:solana, Privy::AccountWalletChainType::TaggedSymbol)
      TRON = T.let(:tron, Privy::AccountWalletChainType::TaggedSymbol)
    end
  end
end
