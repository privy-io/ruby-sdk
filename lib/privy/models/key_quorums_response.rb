# frozen_string_literal: true

module Privy
  module Models
    class KeyQuorumsResponse < Privy::Internal::Type::BaseModel
      # @!attribute data
      #   Key quorums in this page.
      #
      #   @return [Array<Privy::Models::KeyQuorum>]
      required :data, -> { Privy::Internal::Type::ArrayOf[Privy::KeyQuorum] }

      # @!attribute next_cursor
      #   Cursor for the next page. Null when there are no further pages.
      #
      #   @return [String, nil]
      required :next_cursor, String, nil?: true

      # @!method initialize(data:, next_cursor:)
      #   Paginated list of key quorums in an app.
      #
      #   @param data [Array<Privy::Models::KeyQuorum>] Key quorums in this page.
      #
      #   @param next_cursor [String, nil] Cursor for the next page. Null when there are no further pages.
    end
  end
end
