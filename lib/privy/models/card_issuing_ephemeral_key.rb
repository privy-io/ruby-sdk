# frozen_string_literal: true

module Privy
  module Models
    class CardIssuingEphemeralKey < Privy::Internal::Type::BaseModel
      # @!attribute ephemeral_key_secret
      #   Secret used only by Stripe Issuing Elements in the authenticated browser.
      #
      #   @return [String]
      required :ephemeral_key_secret, String

      # @!method initialize(ephemeral_key_secret:)
      #   Short-lived Stripe authorization for displaying card details.
      #
      #   @param ephemeral_key_secret [String] Secret used only by Stripe Issuing Elements in the authenticated browser.
    end
  end
end
