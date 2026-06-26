# typed: strong

module Privy
  module Models
    module Wallets
      # Status of a TVM (Tron) step in a wallet action.
      module TvmWalletActionStepStatus
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::Wallets::TvmWalletActionStepStatus)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PREPARING =
          T.let(
            :preparing,
            Privy::Wallets::TvmWalletActionStepStatus::TaggedSymbol
          )
        QUEUED =
          T.let(
            :queued,
            Privy::Wallets::TvmWalletActionStepStatus::TaggedSymbol
          )
        PENDING =
          T.let(
            :pending,
            Privy::Wallets::TvmWalletActionStepStatus::TaggedSymbol
          )
        CONFIRMED =
          T.let(
            :confirmed,
            Privy::Wallets::TvmWalletActionStepStatus::TaggedSymbol
          )
        REJECTED =
          T.let(
            :rejected,
            Privy::Wallets::TvmWalletActionStepStatus::TaggedSymbol
          )
        REVERTED =
          T.let(
            :reverted,
            Privy::Wallets::TvmWalletActionStepStatus::TaggedSymbol
          )
        FAILED =
          T.let(
            :failed,
            Privy::Wallets::TvmWalletActionStepStatus::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Privy::Wallets::TvmWalletActionStepStatus::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
