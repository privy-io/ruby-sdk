# frozen_string_literal: true

module Privy
  module Models
    class CardIssuingListTransactionsInput < Privy::Internal::Type::BaseModel
      # @!attribute environment
      #   The Privy API environment.
      #
      #   @return [Symbol, Privy::Models::Environment]
      required :environment, enum: -> { Privy::Environment }

      # @!attribute ending_before
      #
      #   @return [String, nil]
      optional :ending_before, String

      # @!attribute limit
      #
      #   @return [Float, nil]
      optional :limit, Float, nil?: true

      # @!attribute starting_after
      #
      #   @return [String, nil]
      optional :starting_after, String

      # @!method initialize(environment:, ending_before: nil, limit: nil, starting_after: nil)
      #   Query parameters for listing Stripe Issuing transactions for a Privy card.
      #
      #   @param environment [Symbol, Privy::Models::Environment] The Privy API environment.
      #
      #   @param ending_before [String]
      #
      #   @param limit [Float, nil]
      #
      #   @param starting_after [String]
    end
  end
end
