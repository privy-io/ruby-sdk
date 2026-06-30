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

      # @!attribute environment
      #   Whether to use the sandbox or production environment for fiat onramp.
      #
      #   @return [Symbol, Privy::Models::FiatOnrampEnvironment, nil]
      optional :environment, enum: -> { Privy::FiatOnrampEnvironment }

      # @!method initialize(auth_intent_id:, crypto_customer_id:, environment: nil)
      #   Input for exchanging a Link auth intent for OAuth tokens.
      #
      #   @param auth_intent_id [String]
      #
      #   @param crypto_customer_id [String]
      #
      #   @param environment [Symbol, Privy::Models::FiatOnrampEnvironment] Whether to use the sandbox or production environment for fiat onramp.
    end
  end
end
