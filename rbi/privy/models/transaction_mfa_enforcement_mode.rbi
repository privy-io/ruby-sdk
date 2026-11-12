# typed: strong

module Privy
  module Models
    # How the app enforces multi-factor authentication for wallet operations.
    module TransactionMfaEnforcementMode
      extend Privy::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(Privy::TransactionMfaEnforcementMode::TaggedSymbol, String)
        end

      sig do
        override.returns(
          T::Array[Privy::TransactionMfaEnforcementMode::Variants]
        )
      end
      def self.variants
      end

      TaggedSymbol =
        T.type_alias { T.all(Symbol, Privy::TransactionMfaEnforcementMode) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      POLICY_BASED =
        T.let(:POLICY_BASED, Privy::TransactionMfaEnforcementMode::TaggedSymbol)
      ALL_WALLET_OPERATIONS =
        T.let(
          :ALL_WALLET_OPERATIONS,
          Privy::TransactionMfaEnforcementMode::TaggedSymbol
        )
    end
  end
end
