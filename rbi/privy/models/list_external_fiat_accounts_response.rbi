# typed: strong

module Privy
  module Models
    class ListExternalFiatAccountsResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::ListExternalFiatAccountsResponse,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(T::Array[Privy::ExternalFiatAccount]) }
      attr_accessor :external_fiat_accounts

      sig { returns(T.nilable(String)) }
      attr_accessor :next_cursor

      # A list of external fiat accounts linked to a user.
      sig do
        params(
          external_fiat_accounts: T::Array[Privy::ExternalFiatAccount::OrHash],
          next_cursor: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(external_fiat_accounts:, next_cursor:)
      end

      sig do
        override.returns(
          {
            external_fiat_accounts: T::Array[Privy::ExternalFiatAccount],
            next_cursor: T.nilable(String)
          }
        )
      end
      def to_hash
      end
    end
  end
end
