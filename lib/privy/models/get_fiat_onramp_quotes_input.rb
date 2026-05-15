# frozen_string_literal: true

module Privy
  module Models
    class GetFiatOnrampQuotesInput < Privy::Internal::Type::BaseModel
      # @!attribute destination
      #   Destination cryptocurrency details for a fiat onramp quote request.
      #
      #   @return [Privy::Models::FiatOnrampDestination]
      required :destination, -> { Privy::FiatOnrampDestination }

      # @!attribute environment
      #   Whether to use the sandbox or production environment for fiat onramp.
      #
      #   @return [Symbol, Privy::Models::FiatOnrampEnvironment]
      required :environment, enum: -> { Privy::FiatOnrampEnvironment }

      # @!attribute source
      #   Source currency details for a fiat onramp quote request.
      #
      #   @return [Privy::Models::FiatOnrampSource]
      required :source, -> { Privy::FiatOnrampSource }

      # @!method initialize(destination:, environment:, source:)
      #   The request input for getting fiat onramp quotes.
      #
      #   @param destination [Privy::Models::FiatOnrampDestination] Destination cryptocurrency details for a fiat onramp quote request.
      #
      #   @param environment [Symbol, Privy::Models::FiatOnrampEnvironment] Whether to use the sandbox or production environment for fiat onramp.
      #
      #   @param source [Privy::Models::FiatOnrampSource] Source currency details for a fiat onramp quote request.
    end
  end
end
