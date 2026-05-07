# typed: strong

module Privy
  module Models
    # The role of an authorization key, controlling what actions it can authorize on a
    # wallet.
    module AuthorizationKeyRole
      extend Privy::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Privy::AuthorizationKeyRole) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      ROOT = T.let(:root, Privy::AuthorizationKeyRole::TaggedSymbol)
      MANAGER = T.let(:manager, Privy::AuthorizationKeyRole::TaggedSymbol)
      DELEGATED_ACTIONS =
        T.let(:"delegated-actions", Privy::AuthorizationKeyRole::TaggedSymbol)

      sig do
        override.returns(T::Array[Privy::AuthorizationKeyRole::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end
