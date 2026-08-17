# frozen_string_literal: true

module Privy
  module Models
    class CardIssuingCardholder < Privy::Internal::Type::BaseModel
      # @!attribute name
      #   Cardholder name printed on the card, or null when unavailable.
      #
      #   @return [String, nil]
      required :name, String, nil?: true

      # @!method initialize(name:)
      #   Cardholder metadata for a card.
      #
      #   @param name [String, nil] Cardholder name printed on the card, or null when unavailable.
    end
  end
end
