# frozen_string_literal: true

module Privy
  module Models
    class GetFiatOnrampURLInput < Privy::Internal::Type::BaseModel
      # @!attribute destination
      #   Destination cryptocurrency details for a fiat onramp quote request.
      #
      #   @return [Privy::Models::FiatOnrampDestination]
      required :destination, -> { Privy::FiatOnrampDestination }

      # @!attribute payment_method
      #
      #   @return [String]
      required :payment_method, String

      # @!attribute provider
      #   The fiat onramp provider to use.
      #
      #   @return [Symbol, Privy::Models::FiatOnrampProvider]
      required :provider, enum: -> { Privy::FiatOnrampProvider }

      # @!attribute source
      #   Source currency details for a fiat onramp quote request.
      #
      #   @return [Privy::Models::FiatOnrampSource]
      required :source, -> { Privy::FiatOnrampSource }

      # @!attribute redirect_url
      #
      #   @return [String, nil]
      optional :redirect_url, String

      # @!attribute sub_provider
      #
      #   @return [String, nil]
      optional :sub_provider, String

      # @!method initialize(destination:, payment_method:, provider:, source:, redirect_url: nil, sub_provider: nil)
      #   The request input for getting a fiat onramp provider session URL.
      #
      #   @param destination [Privy::Models::FiatOnrampDestination] Destination cryptocurrency details for a fiat onramp quote request.
      #
      #   @param payment_method [String]
      #
      #   @param provider [Symbol, Privy::Models::FiatOnrampProvider] The fiat onramp provider to use.
      #
      #   @param source [Privy::Models::FiatOnrampSource] Source currency details for a fiat onramp quote request.
      #
      #   @param redirect_url [String]
      #
      #   @param sub_provider [String]
    end
  end
end
