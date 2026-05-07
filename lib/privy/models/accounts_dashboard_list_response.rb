# frozen_string_literal: true

module Privy
  module Models
    class AccountsDashboardListResponse < Privy::Internal::Type::BaseModel
      # @!attribute data
      #   The list of accounts, with balances included for dashboard display.
      #
      #   @return [Array<Privy::Models::AssetAccountWithBalance>]
      required :data, -> { Privy::Internal::Type::ArrayOf[Privy::AssetAccountWithBalance] }

      # @!attribute next_cursor
      #   Cursor for fetching the next page of results, or null if no more results.
      #
      #   @return [String, nil]
      required :next_cursor, String, nil?: true

      # @!method initialize(data:, next_cursor:)
      #   Paginated list of digital asset accounts for the dashboard.
      #
      #   @param data [Array<Privy::Models::AssetAccountWithBalance>] The list of accounts, with balances included for dashboard display.
      #
      #   @param next_cursor [String, nil] Cursor for fetching the next page of results, or null if no more results.
    end
  end
end
