# frozen_string_literal: true

module Privy
  module Models
    class ConditionSetItemsResponse < Privy::Internal::Type::BaseModel
      # @!attribute items
      #   List of condition set items.
      #
      #   @return [Array<Privy::Models::ConditionSetItem>]
      required :items, -> { Privy::Internal::Type::ArrayOf[Privy::ConditionSetItem] }

      # @!attribute next_cursor
      #   Cursor for pagination. Null if there are no more items.
      #
      #   @return [String, nil]
      required :next_cursor, String, nil?: true

      # @!method initialize(items:, next_cursor:)
      #   Paginated list of condition set items.
      #
      #   @param items [Array<Privy::Models::ConditionSetItem>] List of condition set items.
      #
      #   @param next_cursor [String, nil] Cursor for pagination. Null if there are no more items.
    end
  end
end
