# typed: strong

module Privy
  module Models
    module Wallets
      # Status of an EVM step in a wallet action.
      module EvmWalletActionStepStatus
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::Wallets::EvmWalletActionStepStatus)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PREPARING =
          T.let(
            :preparing,
            Privy::Wallets::EvmWalletActionStepStatus::TaggedSymbol
          )
        QUEUED =
          T.let(
            :queued,
            Privy::Wallets::EvmWalletActionStepStatus::TaggedSymbol
          )
        PENDING =
          T.let(
            :pending,
            Privy::Wallets::EvmWalletActionStepStatus::TaggedSymbol
          )
        RETRYING =
          T.let(
            :retrying,
            Privy::Wallets::EvmWalletActionStepStatus::TaggedSymbol
          )
        CONFIRMED =
          T.let(
            :confirmed,
            Privy::Wallets::EvmWalletActionStepStatus::TaggedSymbol
          )
        REJECTED =
          T.let(
            :rejected,
            Privy::Wallets::EvmWalletActionStepStatus::TaggedSymbol
          )
        REVERTED =
          T.let(
            :reverted,
            Privy::Wallets::EvmWalletActionStepStatus::TaggedSymbol
          )
        REPLACED =
          T.let(
            :replaced,
            Privy::Wallets::EvmWalletActionStepStatus::TaggedSymbol
          )
        ABANDONED =
          T.let(
            :abandoned,
            Privy::Wallets::EvmWalletActionStepStatus::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Privy::Wallets::EvmWalletActionStepStatus::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
