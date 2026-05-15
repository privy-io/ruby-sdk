# typed: strong

module Privy
  module Models
    # Status of an external transaction step in a wallet action.
    module ExternalTransactionWalletActionStepStatus
      extend Privy::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias do
          T.all(Symbol, Privy::ExternalTransactionWalletActionStepStatus)
        end
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      PREPARING =
        T.let(
          :preparing,
          Privy::ExternalTransactionWalletActionStepStatus::TaggedSymbol
        )
      QUEUED =
        T.let(
          :queued,
          Privy::ExternalTransactionWalletActionStepStatus::TaggedSymbol
        )
      PENDING =
        T.let(
          :pending,
          Privy::ExternalTransactionWalletActionStepStatus::TaggedSymbol
        )
      CONFIRMED =
        T.let(
          :confirmed,
          Privy::ExternalTransactionWalletActionStepStatus::TaggedSymbol
        )
      REJECTED =
        T.let(
          :rejected,
          Privy::ExternalTransactionWalletActionStepStatus::TaggedSymbol
        )
      FAILED =
        T.let(
          :failed,
          Privy::ExternalTransactionWalletActionStepStatus::TaggedSymbol
        )

      sig do
        override.returns(
          T::Array[
            Privy::ExternalTransactionWalletActionStepStatus::TaggedSymbol
          ]
        )
      end
      def self.values
      end
    end
  end
end
