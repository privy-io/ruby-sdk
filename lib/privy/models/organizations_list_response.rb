# frozen_string_literal: true

module Privy
  module Models
    class OrganizationsListResponse < Privy::Internal::Type::BaseModel
      # @!attribute data
      #   Items in this page.
      #
      #   @return [Array<Privy::Models::Organization>]
      required :data, -> { Privy::Internal::Type::ArrayOf[Privy::Organization] }

      # @!attribute next_cursor
      #   Cursor for the next page. Null when there are no further pages.
      #
      #   @return [String, nil]
      required :next_cursor, String, nil?: true

      # @!method initialize(data:, next_cursor:)
      #   Response returned when listing organizations for an app.
      #
      #   @param data [Array<Privy::Models::Organization>] Items in this page.
      #
      #   @param next_cursor [String, nil] Cursor for the next page. Null when there are no further pages.
    end
  end
end
