# typed: strong

module Privy
  module Models
    class DenylistListResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::DenylistListResponse, Privy::Internal::AnyHash)
        end

      # Denylist entries in this page.
      sig { returns(T::Array[Privy::DenylistEntry]) }
      attr_accessor :data

      # Cursor for the next page, which is null only when this page is empty, so keep
      # paging until `data` is empty.
      sig { returns(T.nilable(String)) }
      attr_accessor :next_cursor

      # A page of denylist entries for an app.
      sig do
        params(
          data: T::Array[Privy::DenylistEntry::OrHash],
          next_cursor: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # Denylist entries in this page.
        data:,
        # Cursor for the next page, which is null only when this page is empty, so keep
        # paging until `data` is empty.
        next_cursor:
      )
      end

      sig do
        override.returns(
          {
            data: T::Array[Privy::DenylistEntry],
            next_cursor: T.nilable(String)
          }
        )
      end
      def to_hash
      end
    end
  end
end
