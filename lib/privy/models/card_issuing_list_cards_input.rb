# frozen_string_literal: true

module Privy
  module Models
    class CardIssuingListCardsInput < Privy::Internal::Type::BaseModel
      # @!attribute environment
      #   The Privy API environment.
      #
      #   @return [Symbol, Privy::Models::Environment]
      required :environment, enum: -> { Privy::Environment }

      # @!attribute cursor
      #   Cursor returned by the previous page.
      #
      #   @return [String, nil]
      optional :cursor, String

      # @!attribute limit
      #   Maximum number of cards to return.
      #
      #   @return [Integer, nil]
      optional :limit, Integer

      # @!method initialize(environment:, cursor: nil, limit: nil)
      #   Query parameters for listing cards bound to the authenticated Privy user.
      #
      #   @param environment [Symbol, Privy::Models::Environment] The Privy API environment.
      #
      #   @param cursor [String] Cursor returned by the previous page.
      #
      #   @param limit [Integer] Maximum number of cards to return.
    end
  end
end
