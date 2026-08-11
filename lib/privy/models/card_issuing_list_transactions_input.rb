# frozen_string_literal: true

module Privy
  module Models
    class CardIssuingListTransactionsInput < Privy::Internal::Type::BaseModel
      # @!attribute environment
      #   The Privy API environment.
      #
      #   @return [Symbol, Privy::Models::Environment]
      required :environment, enum: -> { Privy::Environment }

      # @!attribute cursor
      #   Opaque cursor returned by the previous page.
      #
      #   @return [String, nil]
      optional :cursor, String

      # @!attribute limit
      #   Maximum number of records requested from each card activity source.
      #
      #   @return [Integer, nil]
      optional :limit, Integer

      # @!method initialize(environment:, cursor: nil, limit: nil)
      #   Query parameters for listing activity for a Privy card.
      #
      #   @param environment [Symbol, Privy::Models::Environment] The Privy API environment.
      #
      #   @param cursor [String] Opaque cursor returned by the previous page.
      #
      #   @param limit [Integer] Maximum number of records requested from each card activity source.
    end
  end
end
