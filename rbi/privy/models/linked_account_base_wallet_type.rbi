# typed: strong

module Privy
  module Models
    # The type of wallet linked account (external wallet or smart wallet).
    module LinkedAccountBaseWalletType
      extend Privy::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, Privy::LinkedAccountBaseWalletType) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      WALLET = T.let(:wallet, Privy::LinkedAccountBaseWalletType::TaggedSymbol)
      SMART_WALLET =
        T.let(:smart_wallet, Privy::LinkedAccountBaseWalletType::TaggedSymbol)

      sig do
        override.returns(
          T::Array[Privy::LinkedAccountBaseWalletType::TaggedSymbol]
        )
      end
      def self.values
      end
    end
  end
end
