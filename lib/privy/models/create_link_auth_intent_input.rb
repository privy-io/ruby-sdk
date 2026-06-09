# frozen_string_literal: true

module Privy
  module Models
    class CreateLinkAuthIntentInput < Privy::Internal::Type::BaseModel
      # @!attribute email
      #
      #   @return [String, nil]
      optional :email, String

      # @!attribute environment
      #   Whether to use the sandbox or production environment for fiat onramp.
      #
      #   @return [Symbol, Privy::Models::FiatOnrampEnvironment, nil]
      optional :environment, enum: -> { Privy::FiatOnrampEnvironment }

      # @!method initialize(email: nil, environment: nil)
      #   Input for creating a Link auth intent to initiate Stripe onramp authentication.
      #
      #   @param email [String]
      #
      #   @param environment [Symbol, Privy::Models::FiatOnrampEnvironment] Whether to use the sandbox or production environment for fiat onramp.
    end
  end
end
