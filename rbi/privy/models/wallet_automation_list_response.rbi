# typed: strong

module Privy
  module Models
    class WalletAutomationListResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::WalletAutomationListResponse, Privy::Internal::AnyHash)
        end

      # Items in this page.
      sig { returns(T::Array[Privy::WalletAutomationResponse]) }
      attr_accessor :data

      # Cursor for the next page. Null when there are no further pages.
      sig { returns(T.nilable(String)) }
      attr_accessor :next_cursor

      # Paginated list of wallet automations.
      sig do
        params(
          data: T::Array[Privy::WalletAutomationResponse::OrHash],
          next_cursor: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # Items in this page.
        data:,
        # Cursor for the next page. Null when there are no further pages.
        next_cursor:
      )
      end

      sig do
        override.returns(
          {
            data: T::Array[Privy::WalletAutomationResponse],
            next_cursor: T.nilable(String)
          }
        )
      end
      def to_hash
      end
    end
  end
end
