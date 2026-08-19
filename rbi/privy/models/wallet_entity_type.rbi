# typed: strong

module Privy
  module Models
    # The type of entity a wallet is attributed to.
    module WalletEntityType
      extend Privy::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Privy::WalletEntityType) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      USER = T.let(:user, Privy::WalletEntityType::TaggedSymbol)
      ORGANIZATION = T.let(:organization, Privy::WalletEntityType::TaggedSymbol)

      sig { override.returns(T::Array[Privy::WalletEntityType::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
