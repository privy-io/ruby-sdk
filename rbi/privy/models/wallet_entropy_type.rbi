# typed: strong

module Privy
  module Models
    # The entropy type of the wallet.
    module WalletEntropyType
      extend Privy::Internal::Type::Union

      Variants =
        T.type_alias { T.any(Privy::WalletEntropyType::TaggedSymbol, String) }

      sig { override.returns(T::Array[Privy::WalletEntropyType::Variants]) }
      def self.variants
      end

      TaggedSymbol = T.type_alias { T.all(Symbol, Privy::WalletEntropyType) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      HD = T.let(:hd, Privy::WalletEntropyType::TaggedSymbol)
      PRIVATE_KEY =
        T.let(:"private-key", Privy::WalletEntropyType::TaggedSymbol)
      ED25519_SCALAR =
        T.let(:"ed25519-scalar", Privy::WalletEntropyType::TaggedSymbol)
    end
  end
end
