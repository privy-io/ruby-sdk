# typed: strong

module Privy
  module Models
    module Wallets
      # Status of an external transaction step in a wallet action.
      module ExternalTransactionWalletActionStepStatus
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Privy::Wallets::ExternalTransactionWalletActionStepStatus
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PREPARING =
          T.let(
            :preparing,
            Privy::Wallets::ExternalTransactionWalletActionStepStatus::TaggedSymbol
          )
        QUEUED =
          T.let(
            :queued,
            Privy::Wallets::ExternalTransactionWalletActionStepStatus::TaggedSymbol
          )
        PENDING =
          T.let(
            :pending,
            Privy::Wallets::ExternalTransactionWalletActionStepStatus::TaggedSymbol
          )
        CONFIRMED =
          T.let(
            :confirmed,
            Privy::Wallets::ExternalTransactionWalletActionStepStatus::TaggedSymbol
          )
        REJECTED =
          T.let(
            :rejected,
            Privy::Wallets::ExternalTransactionWalletActionStepStatus::TaggedSymbol
          )
        FAILED =
          T.let(
            :failed,
            Privy::Wallets::ExternalTransactionWalletActionStepStatus::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::Wallets::ExternalTransactionWalletActionStepStatus::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
