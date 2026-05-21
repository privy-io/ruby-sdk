# frozen_string_literal: true

module Privy
  module Models
    class KrakenEmbedGetEarnAssetsResponse < Privy::Internal::Type::BaseModel
      # @!attribute data
      #   Kraken API response envelope for earn assets.
      #
      #   @return [Privy::Models::KrakenEmbedGetEarnAssetsKrakenResponse]
      required :data, -> { Privy::KrakenEmbedGetEarnAssetsKrakenResponse }

      # @!method initialize(data:)
      #   List of earn assets with APR estimates and optional user allocations.
      #
      #   @param data [Privy::Models::KrakenEmbedGetEarnAssetsKrakenResponse] Kraken API response envelope for earn assets.
    end
  end
end
