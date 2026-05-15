# typed: strong

module Privy
  module Models
    class ConditionSetItemsResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::ConditionSetItemsResponse, Privy::Internal::AnyHash)
        end

      # List of condition set items.
      sig { returns(T::Array[Privy::ConditionSetItem]) }
      attr_accessor :items

      # Cursor for pagination. Null if there are no more items.
      sig { returns(T.nilable(String)) }
      attr_accessor :next_cursor

      # Paginated list of condition set items.
      sig do
        params(
          items: T::Array[Privy::ConditionSetItem::OrHash],
          next_cursor: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # List of condition set items.
        items:,
        # Cursor for pagination. Null if there are no more items.
        next_cursor:
      )
      end

      sig do
        override.returns(
          {
            items: T::Array[Privy::ConditionSetItem],
            next_cursor: T.nilable(String)
          }
        )
      end
      def to_hash
      end
    end
  end
end
