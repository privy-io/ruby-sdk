# typed: strong

module Privy
  module Models
    class AccountsDashboardListResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::AccountsDashboardListResponse, Privy::Internal::AnyHash)
        end

      # The list of accounts, with balances included for dashboard display.
      sig { returns(T::Array[Privy::AssetAccountWithBalance]) }
      attr_accessor :data

      # Cursor for fetching the next page of results, or null if no more results.
      sig { returns(T.nilable(String)) }
      attr_accessor :next_cursor

      # Paginated list of digital asset accounts for the dashboard.
      sig do
        params(
          data: T::Array[Privy::AssetAccountWithBalance::OrHash],
          next_cursor: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # The list of accounts, with balances included for dashboard display.
        data:,
        # Cursor for fetching the next page of results, or null if no more results.
        next_cursor:
      )
      end

      sig do
        override.returns(
          {
            data: T::Array[Privy::AssetAccountWithBalance],
            next_cursor: T.nilable(String)
          }
        )
      end
      def to_hash
      end
    end
  end
end
