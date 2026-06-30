# typed: strong

module Privy
  module Models
    WalletActionStatus = Wallets::WalletActionStatus

    module Wallets
      # Status of a wallet action.
      module WalletActionStatus
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Privy::Wallets::WalletActionStatus) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PENDING =
          T.let(:pending, Privy::Wallets::WalletActionStatus::TaggedSymbol)
        SUCCEEDED =
          T.let(:succeeded, Privy::Wallets::WalletActionStatus::TaggedSymbol)
        REJECTED =
          T.let(:rejected, Privy::Wallets::WalletActionStatus::TaggedSymbol)
        FAILED =
          T.let(:failed, Privy::Wallets::WalletActionStatus::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Privy::Wallets::WalletActionStatus::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
