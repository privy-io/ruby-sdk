# typed: strong

module Privy
  module Models
    # The type of wallet action that incurred a usage charge.
    module UsageSourceType
      extend Privy::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Privy::UsageSourceType) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      WALLET_ACTION_TRANSFER =
        T.let(:"wallet-action-transfer", Privy::UsageSourceType::TaggedSymbol)
      WALLET_ACTION_SWAP =
        T.let(:"wallet-action-swap", Privy::UsageSourceType::TaggedSymbol)

      sig { override.returns(T::Array[Privy::UsageSourceType::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
