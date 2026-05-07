# typed: strong

module Privy
  module Models
    class AccountResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Privy::AccountResponse, Privy::Internal::AnyHash) }

      # The account ID.
      sig { returns(String) }
      attr_accessor :id

      # An optional display name for the account.
      sig { returns(T.nilable(String)) }
      attr_accessor :display_name

      # The wallets belonging to this account.
      sig { returns(T::Array[Privy::AccountWallet]) }
      attr_accessor :wallets

      # A digital asset account that groups wallets under a single entity.
      sig do
        params(
          id: String,
          display_name: T.nilable(String),
          wallets: T::Array[Privy::AccountWallet::OrHash]
        ).returns(T.attached_class)
      end
      def self.new(
        # The account ID.
        id:,
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
