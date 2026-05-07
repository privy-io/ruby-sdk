# typed: strong

module Privy
  module Models
    # The supported smart wallet providers.
    module SmartWalletType
      extend Privy::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Privy::SmartWalletType) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      SAFE = T.let(:safe, Privy::SmartWalletType::TaggedSymbol)
      KERNEL = T.let(:kernel, Privy::SmartWalletType::TaggedSymbol)
      LIGHT_ACCOUNT =
        T.let(:light_account, Privy::SmartWalletType::TaggedSymbol)
      BICONOMY = T.let(:biconomy, Privy::SmartWalletType::TaggedSymbol)
      COINBASE_SMART_WALLET =
        T.let(:coinbase_smart_wallet, Privy::SmartWalletType::TaggedSymbol)
      THIRDWEB = T.let(:thirdweb, Privy::SmartWalletType::TaggedSymbol)
      NEXUS = T.let(:nexus, Privy::SmartWalletType::TaggedSymbol)

      sig { override.returns(T::Array[Privy::SmartWalletType::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
