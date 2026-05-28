# frozen_string_literal: true

module Privy
  module Models
    class CreateStripeOnrampSessionInput < Privy::Internal::Type::BaseModel
      # @!attribute environment
      #   Whether to use the sandbox or production environment for fiat onramp.
      #
      #   @return [Symbol, Privy::Models::FiatOnrampEnvironment]
      required :environment, enum: -> { Privy::FiatOnrampEnvironment }

      # @!attribute session
      #   Parameters for creating a Stripe onramp session.
      #
      #   @return [Privy::Models::OnrampSessionParams]
      required :session, -> { Privy::OnrampSessionParams }

      # @!attribute session_id
      #
      #   @return [String]
      required :session_id, String

      # @!method initialize(environment:, session:, session_id:)
      #   Input for creating a Stripe onramp session.
      #
      #   @param environment [Symbol, Privy::Models::FiatOnrampEnvironment] Whether to use the sandbox or production environment for fiat onramp.
      #
      #   @param session [Privy::Models::OnrampSessionParams] Parameters for creating a Stripe onramp session.
      #
      #   @param session_id [String]
    end
  end
end
