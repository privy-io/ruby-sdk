# frozen_string_literal: true

module Privy
  module Models
    class WalletAutomationListResponse < Privy::Internal::Type::BaseModel
      # @!attribute data
      #   Items in this page.
      #
      #   @return [Array<Privy::Models::WalletAutomationResponse>]
      required :data, -> { Privy::Internal::Type::ArrayOf[Privy::WalletAutomationResponse] }

      # @!attribute next_cursor
      #   Cursor for the next page. Null when there are no further pages.
      #
      #   @return [String, nil]
      required :next_cursor, String, nil?: true

      # @!method initialize(data:, next_cursor:)
      #   Paginated list of wallet automations.
      #
      #   @param data [Array<Privy::Models::WalletAutomationResponse>] Items in this page.
      #
      #   @param next_cursor [String, nil] Cursor for the next page. Null when there are no further pages.
    end
  end
end
