# typed: strong

module Privy
  module Models
    module Wallets
      # Status of an SVM step in a wallet action.
      module SvmWalletActionStepStatus
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::Wallets::SvmWalletActionStepStatus)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PREPARING =
          T.let(
            :preparing,
            Privy::Wallets::SvmWalletActionStepStatus::TaggedSymbol
          )
        QUEUED =
          T.let(
            :queued,
            Privy::Wallets::SvmWalletActionStepStatus::TaggedSymbol
          )
        PENDING =
          T.let(
            :pending,
            Privy::Wallets::SvmWalletActionStepStatus::TaggedSymbol
          )
        CONFIRMED =
          T.let(
            :confirmed,
            Privy::Wallets::SvmWalletActionStepStatus::TaggedSymbol
          )
        REJECTED =
          T.let(
            :rejected,
            Privy::Wallets::SvmWalletActionStepStatus::TaggedSymbol
          )
        REVERTED =
          T.let(
            :reverted,
            Privy::Wallets::SvmWalletActionStepStatus::TaggedSymbol
          )
        FAILED =
          T.let(
            :failed,
            Privy::Wallets::SvmWalletActionStepStatus::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Privy::Wallets::SvmWalletActionStepStatus::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
