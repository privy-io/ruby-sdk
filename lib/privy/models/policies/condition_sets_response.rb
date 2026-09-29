# frozen_string_literal: true

module Privy
  module Models
    module Policies
      class ConditionSetsResponse < Privy::Internal::Type::BaseModel
        # @!attribute data
        #   Condition sets in this page.
        #
        #   @return [Array<Privy::Models::ConditionSet>]
        required :data, -> { Privy::Internal::Type::ArrayOf[Privy::ConditionSet] }

        # @!attribute next_cursor
        #   Cursor for the next page. Null when there are no further pages.
        #
        #   @return [String, nil]
        required :next_cursor, String, nil?: true

        # @!method initialize(data:, next_cursor:)
        #   Paginated list of condition sets in an app.
        #
        #   @param data [Array<Privy::Models::ConditionSet>] Condition sets in this page.
        #
        #   @param next_cursor [String, nil] Cursor for the next page. Null when there are no further pages.
      end
    end
  end
end
