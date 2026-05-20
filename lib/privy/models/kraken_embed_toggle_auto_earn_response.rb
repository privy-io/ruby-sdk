# frozen_string_literal: true

module Privy
  module Models
    class KrakenEmbedToggleAutoEarnResponse < Privy::Internal::Type::BaseModel
      # @!attribute data
      #   Kraken API response envelope for toggle auto-earn. Result is null on success.
      #
      #   @return [Privy::Models::KrakenEmbedToggleAutoEarnKrakenResponse]
      required :data, -> { Privy::KrakenEmbedToggleAutoEarnKrakenResponse }

      # @!method initialize(data:)
      #   Response from toggling Auto-Earn. The response body is empty on success.
      #
      #   @param data [Privy::Models::KrakenEmbedToggleAutoEarnKrakenResponse] Kraken API response envelope for toggle auto-earn. Result is null on success.
    end
  end
end
