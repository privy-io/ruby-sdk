# typed: strong

module Privy
  module Models
    module Wallets
      # Status of a custodian transaction step in a wallet action.
      module CustodianTransactionWalletActionStepStatus
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Privy::Wallets::CustodianTransactionWalletActionStepStatus
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PREPARING =
          T.let(
            :preparing,
            Privy::Wallets::CustodianTransactionWalletActionStepStatus::TaggedSymbol
          )
        QUEUED =
          T.let(
            :queued,
            Privy::Wallets::CustodianTransactionWalletActionStepStatus::TaggedSymbol
          )
        CUSTODIAN_REVIEWING =
          T.let(
            :custodian_reviewing,
            Privy::Wallets::CustodianTransactionWalletActionStepStatus::TaggedSymbol
          )
        PENDING =
          T.let(
            :pending,
            Privy::Wallets::CustodianTransactionWalletActionStepStatus::TaggedSymbol
          )
        CONFIRMED =
          T.let(
            :confirmed,
            Privy::Wallets::CustodianTransactionWalletActionStepStatus::TaggedSymbol
          )
        REJECTED =
          T.let(
            :rejected,
            Privy::Wallets::CustodianTransactionWalletActionStepStatus::TaggedSymbol
          )
        FAILED =
          T.let(
            :failed,
            Privy::Wallets::CustodianTransactionWalletActionStepStatus::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::Wallets::CustodianTransactionWalletActionStepStatus::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
