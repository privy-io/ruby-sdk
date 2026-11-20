# frozen_string_literal: true

module Privy
  module Models
    class WalletAutomationExecutionListResponse < Privy::Internal::Type::BaseModel
      # @!attribute data
      #   Items in this page.
      #
      #   @return [Array<Privy::Models::WalletAutomationExecutionResponse>]
      required :data, -> { Privy::Internal::Type::ArrayOf[Privy::WalletAutomationExecutionResponse] }

      # @!attribute next_cursor
      #   Cursor for the next page. Null when there are no further pages.
      #
      #   @return [String, nil]
      required :next_cursor, String, nil?: true

      # @!method initialize(data:, next_cursor:)
      #   Paginated list of wallet automation executions.
      #
      #   @param data [Array<Privy::Models::WalletAutomationExecutionResponse>] Items in this page.
      #
      #   @param next_cursor [String, nil] Cursor for the next page. Null when there are no further pages.
    end
  end
end
