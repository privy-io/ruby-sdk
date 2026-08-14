# frozen_string_literal: true

module Privy
  module Models
    class CardIssuingEphemeralKeyRequestBody < Privy::Internal::Type::BaseModel
      # @!attribute environment
      #   The Privy API environment.
      #
      #   @return [Symbol, Privy::Models::Environment]
      required :environment, enum: -> { Privy::Environment }

      # @!attribute nonce
      #   Browser nonce returned by Stripe.js for the card provider ID.
      #
      #   @return [String]
      required :nonce, String

      # @!method initialize(environment:, nonce:)
      #   Request body for authorizing Stripe Issuing Elements to display card details.
      #
      #   @param environment [Symbol, Privy::Models::Environment] The Privy API environment.
      #
      #   @param nonce [String] Browser nonce returned by Stripe.js for the card provider ID.
    end
  end
end
