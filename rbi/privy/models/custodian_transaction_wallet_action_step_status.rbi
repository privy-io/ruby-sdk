# typed: strong

module Privy
  module Models
    # Status of a custodian transaction step in a wallet action.
    module CustodianTransactionWalletActionStepStatus
      extend Privy::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias do
          T.all(Symbol, Privy::CustodianTransactionWalletActionStepStatus)
        end
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      PREPARING =
        T.let(
          :preparing,
          Privy::CustodianTransactionWalletActionStepStatus::TaggedSymbol
        )
      QUEUED =
        T.let(
          :queued,
          Privy::CustodianTransactionWalletActionStepStatus::TaggedSymbol
        )
      CUSTODIAN_REVIEWING =
        T.let(
          :custodian_reviewing,
          Privy::CustodianTransactionWalletActionStepStatus::TaggedSymbol
        )
      PENDING =
        T.let(
          :pending,
          Privy::CustodianTransactionWalletActionStepStatus::TaggedSymbol
        )
      CONFIRMED =
        T.let(
          :confirmed,
          Privy::CustodianTransactionWalletActionStepStatus::TaggedSymbol
        )
      REJECTED =
        T.let(
          :rejected,
          Privy::CustodianTransactionWalletActionStepStatus::TaggedSymbol
        )
      FAILED =
        T.let(
          :failed,
          Privy::CustodianTransactionWalletActionStepStatus::TaggedSymbol
        )

      sig do
        override.returns(
          T::Array[
            Privy::CustodianTransactionWalletActionStepStatus::TaggedSymbol
          ]
        )
      end
      def self.values
      end
    end
  end
end
