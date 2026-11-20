# frozen_string_literal: true

module Privy
  module Models
    class CardIssuingTransactionsResponse < Privy::Internal::Type::BaseModel
      # @!attribute data
      #   Items in this page.
      #
      #   @return [Array<Privy::Models::CardIssuingTransactionResponse>]
      required :data, -> { Privy::Internal::Type::ArrayOf[Privy::CardIssuingTransactionResponse] }

      # @!attribute next_cursor
      #   Cursor for the next page. Null when there are no further pages.
      #
      #   @return [String, nil]
      required :next_cursor, String, nil?: true

      # @!method initialize(data:, next_cursor:)
      #   A chronological list of card activity.
      #
      #   @param data [Array<Privy::Models::CardIssuingTransactionResponse>] Items in this page.
      #
      #   @param next_cursor [String, nil] Cursor for the next page. Null when there are no further pages.
    end
  end
end
