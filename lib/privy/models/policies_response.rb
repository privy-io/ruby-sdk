# frozen_string_literal: true

module Privy
  module Models
    class PoliciesResponse < Privy::Internal::Type::BaseModel
      # @!attribute data
      #   Policies in this page.
      #
      #   @return [Array<Privy::Models::PolicyListItem>]
      required :data, -> { Privy::Internal::Type::ArrayOf[Privy::PolicyListItem] }

      # @!attribute next_cursor
      #   Cursor for the next page. Null when there are no further pages.
      #
      #   @return [String, nil]
      required :next_cursor, String, nil?: true

      # @!method initialize(data:, next_cursor:)
      #   Paginated list of policies in an app.
      #
      #   @param data [Array<Privy::Models::PolicyListItem>] Policies in this page.
      #
      #   @param next_cursor [String, nil] Cursor for the next page. Null when there are no further pages.
    end
  end
end
