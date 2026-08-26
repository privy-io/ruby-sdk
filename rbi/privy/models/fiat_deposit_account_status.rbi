# typed: strong

module Privy
  module Models
    # Activation status of a fiat deposit account.
    module FiatDepositAccountStatus
      extend Privy::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, Privy::FiatDepositAccountStatus) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      ACTIVATED =
        T.let(:activated, Privy::FiatDepositAccountStatus::TaggedSymbol)
      DEACTIVATED =
        T.let(:deactivated, Privy::FiatDepositAccountStatus::TaggedSymbol)

      sig do
        override.returns(
          T::Array[Privy::FiatDepositAccountStatus::TaggedSymbol]
        )
      end
      def self.values
      end
    end
  end
end
