# frozen_string_literal: true

module Privy
  module Models
    class CardIssuingListCardsInput < Privy::Internal::Type::BaseModel
      # @!attribute environment
      #   The Privy API environment.
      #
      #   @return [Symbol, Privy::Models::Environment]
      required :environment, enum: -> { Privy::Environment }

      # @!attribute limit
      #
      #   @return [Float, nil]
      optional :limit, Float, nil?: true

      # @!attribute starting_after
      #
      #   @return [String, nil]
      optional :starting_after, String

      # @!method initialize(environment:, limit: nil, starting_after: nil)
      #   Query parameters for listing cards bound to the authenticated Privy user.
      #
      #   @param environment [Symbol, Privy::Models::Environment] The Privy API environment.
      #
      #   @param limit [Float, nil]
      #
      #   @param starting_after [String]
    end
  end
end
