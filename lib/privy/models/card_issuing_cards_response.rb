# frozen_string_literal: true

module Privy
  module Models
    class CardIssuingCardsResponse < Privy::Internal::Type::BaseModel
      # @!attribute data
      #   Items in this page.
      #
      #   @return [Array<Privy::Models::CardIssuingCardResponse>]
      required :data, -> { Privy::Internal::Type::ArrayOf[Privy::CardIssuingCardResponse] }

      # @!attribute next_cursor
      #   Cursor for the next page. Null when there are no further pages.
      #
      #   @return [String, nil]
      required :next_cursor, String, nil?: true

      # @!method initialize(data:, next_cursor:)
      #   Stripe Issuing cards bound to the authenticated Privy user.
      #
      #   @param data [Array<Privy::Models::CardIssuingCardResponse>] Items in this page.
      #
      #   @param next_cursor [String, nil] Cursor for the next page. Null when there are no further pages.
    end
  end
end
