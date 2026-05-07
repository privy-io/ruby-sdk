# frozen_string_literal: true

module Privy
  module Models
    class FiatOnrampProviderError < Privy::Internal::Type::BaseModel
      # @!attribute error
      #
      #   @return [String]
      required :error, String

      # @!attribute provider
      #   The fiat onramp provider to use.
      #
      #   @return [Symbol, Privy::Models::FiatOnrampProvider]
      required :provider, enum: -> { Privy::FiatOnrampProvider }

      # @!method initialize(error:, provider:)
      #   An error from a specific fiat onramp provider when fetching quotes.
      #
      #   @param error [String]
      #
      #   @param provider [Symbol, Privy::Models::FiatOnrampProvider] The fiat onramp provider to use.
    end
  end
end
