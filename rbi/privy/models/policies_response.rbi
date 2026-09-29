# typed: strong

module Privy
  module Models
    class PoliciesResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::PoliciesResponse, Privy::Internal::AnyHash)
        end

      # Policies in this page.
      sig { returns(T::Array[Privy::PolicyListItem]) }
      attr_accessor :data

      # Cursor for the next page. Null when there are no further pages.
      sig { returns(T.nilable(String)) }
      attr_accessor :next_cursor

      # Paginated list of policies in an app.
      sig do
        params(
          data: T::Array[Privy::PolicyListItem::OrHash],
          next_cursor: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # Policies in this page.
        data:,
        # Cursor for the next page. Null when there are no further pages.
        next_cursor:
      )
      end

      sig do
        override.returns(
          {
            data: T::Array[Privy::PolicyListItem],
            next_cursor: T.nilable(String)
          }
        )
      end
      def to_hash
      end
    end
  end
end
