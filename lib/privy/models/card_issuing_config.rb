# frozen_string_literal: true

module Privy
  module Models
    class CardIssuingConfig < Privy::Internal::Type::BaseModel
      # @!attribute card_logo_url
      #   Logo for the in-app card face. Null when none is set.
      #
      #   @return [String, nil]
      required :card_logo_url, String, nil?: true

      # @!attribute publishable_key
      #   Stripe publishable key for initializing Stripe.js in the browser.
      #
      #   @return [String]
      required :publishable_key, String

      # @!method initialize(card_logo_url:, publishable_key:)
      #   Browser-safe configuration for rendering Stripe Issuing card details.
      #
      #   @param card_logo_url [String, nil] Logo for the in-app card face. Null when none is set.
      #
      #   @param publishable_key [String] Stripe publishable key for initializing Stripe.js in the browser.
    end
  end
end
