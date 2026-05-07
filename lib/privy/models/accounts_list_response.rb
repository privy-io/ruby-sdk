# frozen_string_literal: true

module Privy
  module Models
    class AccountsListResponse < Privy::Internal::Type::BaseModel
      # @!attribute data
      #   The list of accounts.
      #
      #   @return [Array<Privy::Models::AccountResponse>]
      required :data, -> { Privy::Internal::Type::ArrayOf[Privy::AccountResponse] }

      # @!attribute next_cursor
      #   Cursor for fetching the next page of results, or null if no more results.
      #
      #   @return [String, nil]
      required :next_cursor, String, nil?: true

      # @!method initialize(data:, next_cursor:)
      #   Paginated list of digital asset accounts.
      #
      #   @param data [Array<Privy::Models::AccountResponse>] The list of accounts.
      #
      #   @param next_cursor [String, nil] Cursor for fetching the next page of results, or null if no more results.
    end
  end
end
