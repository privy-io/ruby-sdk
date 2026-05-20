# frozen_string_literal: true

module Privy
  module Models
    class KrakenEmbedGetEarnAssetsKrakenResponse < Privy::Internal::Type::BaseModel
      # @!attribute result
      #   Result payload for earn assets response.
      #
      #   @return [Privy::Models::KrakenEmbedGetEarnAssetsKrakenResponse::Result]
      required :result, -> { Privy::KrakenEmbedGetEarnAssetsKrakenResponse::Result }

      # @!attribute error
      #
      #   @return [Array<Object>, nil]
      optional :error, Privy::Internal::Type::ArrayOf[Privy::Internal::Type::Unknown]

      # @!attribute errors
      #
      #   @return [Array<Object>, nil]
      optional :errors, Privy::Internal::Type::ArrayOf[Privy::Internal::Type::Unknown]

      # @!method initialize(result:, error: nil, errors: nil)
      #   Kraken API response envelope for earn assets.
      #
      #   @param result [Privy::Models::KrakenEmbedGetEarnAssetsKrakenResponse::Result] Result payload for earn assets response.
      #
      #   @param error [Array<Object>]
      #
      #   @param errors [Array<Object>]

      # @see Privy::Models::KrakenEmbedGetEarnAssetsKrakenResponse#result
      class Result < Privy::Models::KrakenEmbedGetEarnAssetsResult
        # @!method initialize
        #   Result payload for earn assets response.
      end
    end
  end
end
