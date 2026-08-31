# typed: strong

module Privy
  module Models
    class ListFiatDepositAccountsResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::ListFiatDepositAccountsResponse,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(T::Array[Privy::FiatDepositAccount]) }
      attr_accessor :fiat_deposit_accounts

      sig { returns(T.nilable(String)) }
      attr_accessor :next_cursor

      # A list of fiat deposit accounts linked to a wallet.
      sig do
        params(
          fiat_deposit_accounts: T::Array[Privy::FiatDepositAccount::OrHash],
          next_cursor: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(fiat_deposit_accounts:, next_cursor:)
      end

      sig do
        override.returns(
          {
            fiat_deposit_accounts: T::Array[Privy::FiatDepositAccount],
            next_cursor: T.nilable(String)
          }
        )
      end
      def to_hash
      end
    end
  end
end
