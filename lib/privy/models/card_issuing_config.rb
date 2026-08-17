# frozen_string_literal: true

module Privy
  module Models
    class CardIssuingConfig < Privy::Internal::Type::BaseModel
      # @!attribute publishable_key
      #   Stripe publishable key for initializing Stripe.js in the browser.
      #
      #   @return [String]
      required :publishable_key, String

      # @!method initialize(publishable_key:)
      #   Browser-safe configuration for rendering Stripe Issuing card details.
      #
      #   @param publishable_key [String] Stripe publishable key for initializing Stripe.js in the browser.
    end
  end
end
