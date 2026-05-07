# typed: strong

module Privy
  module Models
    class AssetAccountWithBalance < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::AssetAccountWithBalance, Privy::Internal::AnyHash)
        end

      # The account ID.
      sig { returns(String) }
      attr_accessor :id

      # Balances for an asset account or wallet
      sig { returns(Privy::BalanceResponse) }
      attr_reader :balance

      sig { params(balance: Privy::BalanceResponse::OrHash).void }
      attr_writer :balance

      # An optional display name for the account.
      sig { returns(T.nilable(String)) }
      attr_accessor :display_name

      # The wallets belonging to this account.
      sig { returns(T::Array[Privy::AccountWallet]) }
      attr_accessor :wallets

      # A digital asset account with its aggregated balance across all wallets and
      # chains.
      sig do
        params(
          id: String,
          balance: Privy::BalanceResponse::OrHash,
          display_name: T.nilable(String),
          wallets: T::Array[Privy::AccountWallet::OrHash]
        ).returns(T.attached_class)
      end
      def self.new(
        # The account ID.
        id:,
        # Balances for an asset account or wallet
        balance:,
        # An optional display name for the account.
        display_name:,
        # The wallets belonging to this account.
        wallets:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            balance: Privy::BalanceResponse,
            display_name: T.nilable(String),
            wallets: T::Array[Privy::AccountWallet]
          }
        )
      end
      def to_hash
      end
    end
  end
end
