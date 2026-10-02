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

      # @!attribute stripe_account
      #   Stripe account the publishable key acts on; absent when the key belongs to the
      #   app directly.
      #
      #   @return [String, nil]
      optional :stripe_account, String

      # @!method initialize(card_logo_url:, publishable_key:, stripe_account: nil)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::CardIssuingConfig} for more details.
      #
      #   Browser-safe configuration for rendering Stripe Issuing card details.
      #
      #   @param card_logo_url [String, nil] Logo for the in-app card face. Null when none is set.
      #
      #   @param publishable_key [String] Stripe publishable key for initializing Stripe.js in the browser.
      #
      #   @param stripe_account [String] Stripe account the publishable key acts on; absent when the key belongs to the a
    end
  end
end
