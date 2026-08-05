# frozen_string_literal: true

module Privy
  module Models
    class CardIssuingCardsResponse < Privy::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Privy::Models::CardIssuingCardResponse>]
      required :data, -> { Privy::Internal::Type::ArrayOf[Privy::CardIssuingCardResponse] }

      # @!attribute next_cursor
      #
      #   @return [String, nil]
      required :next_cursor, String, nil?: true

      # @!method initialize(data:, next_cursor:)
      #   Stripe Issuing cards bound to the authenticated Privy user.
      #
      #   @param data [Array<Privy::Models::CardIssuingCardResponse>]
      #   @param next_cursor [String, nil]
    end
  end
end
