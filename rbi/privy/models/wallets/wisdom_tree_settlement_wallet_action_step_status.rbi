# typed: strong

module Privy
  module Models
    module Wallets
      # Status of a WisdomTree settlement step in a wallet action.
      module WisdomTreeSettlementWalletActionStepStatus
        extend Privy::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              Privy::Wallets::WisdomTreeSettlementWalletActionStepStatus::TaggedSymbol,
              String
            )
          end

        sig do
          override.returns(
            T::Array[
              Privy::Wallets::WisdomTreeSettlementWalletActionStepStatus::Variants
            ]
          )
        end
        def self.variants
        end

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Privy::Wallets::WisdomTreeSettlementWalletActionStepStatus
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PREPARING =
          T.let(
            :preparing,
            Privy::Wallets::WisdomTreeSettlementWalletActionStepStatus::TaggedSymbol
          )
        QUEUED =
          T.let(
            :queued,
            Privy::Wallets::WisdomTreeSettlementWalletActionStepStatus::TaggedSymbol
          )
        PENDING =
          T.let(
            :pending,
            Privy::Wallets::WisdomTreeSettlementWalletActionStepStatus::TaggedSymbol
          )
        CONFIRMED =
          T.let(
            :confirmed,
            Privy::Wallets::WisdomTreeSettlementWalletActionStepStatus::TaggedSymbol
          )
        REJECTED =
          T.let(
            :rejected,
            Privy::Wallets::WisdomTreeSettlementWalletActionStepStatus::TaggedSymbol
          )
        FAILED =
          T.let(
            :failed,
            Privy::Wallets::WisdomTreeSettlementWalletActionStepStatus::TaggedSymbol
          )
      end
    end
  end
end
