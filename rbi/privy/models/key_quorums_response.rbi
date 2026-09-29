# typed: strong

module Privy
  module Models
    class KeyQuorumsResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::KeyQuorumsResponse, Privy::Internal::AnyHash)
        end

      # Key quorums in this page.
      sig { returns(T::Array[Privy::KeyQuorum]) }
      attr_accessor :data

      # Cursor for the next page. Null when there are no further pages.
      sig { returns(T.nilable(String)) }
      attr_accessor :next_cursor

      # Paginated list of key quorums in an app.
      sig do
        params(
          data: T::Array[Privy::KeyQuorum::OrHash],
          next_cursor: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # Key quorums in this page.
        data:,
        # Cursor for the next page. Null when there are no further pages.
        next_cursor:
      )
      end

      sig do
        override.returns(
          { data: T::Array[Privy::KeyQuorum], next_cursor: T.nilable(String) }
        )
      end
      def to_hash
      end
    end
  end
end
