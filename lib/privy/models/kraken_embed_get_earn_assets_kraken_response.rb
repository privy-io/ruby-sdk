# frozen_string_literal: true

module Privy
  module Models
    class KrakenEmbedGetEarnAssetsKrakenResponse < Privy::Internal::Type::BaseModel
      # @!attribute result
      #   Result payload for earn assets response.
      #
      #   @return [Privy::Models::KrakenEmbedGetEarnAssetsResult, nil]
      required :result, -> { Privy::KrakenEmbedGetEarnAssetsResult }, nil?: true

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
      #   @param result [Privy::Models::KrakenEmbedGetEarnAssetsResult, nil] Result payload for earn assets response.
      #
      #   @param error [Array<Object>]
      #
      #   @param errors [Array<Object>]
    end
  end
end
