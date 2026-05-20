# frozen_string_literal: true

module Privy
  module Models
    class KrakenEmbedGetEarnAssetsResult < Privy::Internal::Type::BaseModel
      # @!attribute assets
      #
      #   @return [Hash{Symbol=>Privy::Models::KrakenEmbedEarnAsset}]
      required :assets, -> { Privy::Internal::Type::HashOf[Privy::KrakenEmbedEarnAsset] }

      # @!method initialize(assets:)
      #   Result payload for earn assets response.
      #
      #   @param assets [Hash{Symbol=>Privy::Models::KrakenEmbedEarnAsset}]
    end
  end
end
