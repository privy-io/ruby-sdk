# typed: strong

module Privy
  module Models
    class ListOrganizationExternalFiatAccountsResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::ListOrganizationExternalFiatAccountsResponse,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(T::Array[Privy::OrganizationExternalFiatAccount]) }
      attr_accessor :accounts

      sig { returns(T.nilable(String)) }
      attr_accessor :next_cursor

      # A list of external fiat accounts linked to an organization.
      sig do
        params(
          accounts: T::Array[Privy::OrganizationExternalFiatAccount::OrHash],
          next_cursor: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(accounts:, next_cursor:)
      end

      sig do
        override.returns(
          {
            accounts: T::Array[Privy::OrganizationExternalFiatAccount],
            next_cursor: T.nilable(String)
          }
        )
      end
      def to_hash
      end
    end
  end
end
