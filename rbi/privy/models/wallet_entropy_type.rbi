# typed: strong

module Privy
  module Models
    # The entropy type of the wallet.
    module WalletEntropyType
      extend Privy::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Privy::WalletEntropyType) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      HD = T.let(:hd, Privy::WalletEntropyType::TaggedSymbol)
      PRIVATE_KEY =
        T.let(:"private-key", Privy::WalletEntropyType::TaggedSymbol)

      sig { override.returns(T::Array[Privy::WalletEntropyType::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
