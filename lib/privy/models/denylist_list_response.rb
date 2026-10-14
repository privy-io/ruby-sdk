# frozen_string_literal: true

module Privy
  module Models
    class DenylistListResponse < Privy::Internal::Type::BaseModel
      # @!attribute data
      #   Denylist entries in this page.
      #
      #   @return [Array<Privy::Models::DenylistEntry>]
      required :data, -> { Privy::Internal::Type::ArrayOf[Privy::DenylistEntry] }

      # @!attribute next_cursor
      #   Cursor for the next page, which is null only when this page is empty, so keep
      #   paging until `data` is empty.
      #
      #   @return [String, nil]
      required :next_cursor, String, nil?: true

      # @!method initialize(data:, next_cursor:)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::DenylistListResponse} for more details.
      #
      #   A page of denylist entries for an app.
      #
      #   @param data [Array<Privy::Models::DenylistEntry>] Denylist entries in this page.
      #
      #   @param next_cursor [String, nil] Cursor for the next page, which is null only when this page is empty, so keep pa
    end
  end
end
