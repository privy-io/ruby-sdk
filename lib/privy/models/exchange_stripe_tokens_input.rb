# frozen_string_literal: true

module Privy
  module Models
    class ExchangeStripeTokensInput < Privy::Internal::Type::BaseModel
      # @!attribute auth_intent_id
      #
      #   @return [String]
      required :auth_intent_id, String

      # @!attribute crypto_customer_id
      #
      #   @return [String]
      required :crypto_customer_id, String

      # @!method initialize(auth_intent_id:, crypto_customer_id:)
      #   Input for exchanging a Link auth intent for OAuth tokens.
      #
      #   @param auth_intent_id [String]
      #   @param crypto_customer_id [String]
    end
  end
end
