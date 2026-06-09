# frozen_string_literal: true

module Privy
  module Models
    class KrakenEmbedGetEarnSummaryKrakenResponse < Privy::Internal::Type::BaseModel
      # @!attribute result
      #   Result payload for earn summary response.
      #
      #   @return [Privy::Models::KrakenEmbedGetEarnSummaryResult, nil]
      required :result, -> { Privy::KrakenEmbedGetEarnSummaryResult }, nil?: true

      # @!attribute error
      #
      #   @return [Array<Object>, nil]
      optional :error, Privy::Internal::Type::ArrayOf[Privy::Internal::Type::Unknown]

      # @!attribute errors
      #
      #   @return [Array<Object>, nil]
      optional :errors, Privy::Internal::Type::ArrayOf[Privy::Internal::Type::Unknown]

      # @!method initialize(result:, error: nil, errors: nil)
      #   Kraken API response envelope for earn summary.
      #
      #   @param result [Privy::Models::KrakenEmbedGetEarnSummaryResult, nil] Result payload for earn summary response.
      #
      #   @param error [Array<Object>]
      #
      #   @param errors [Array<Object>]
    end
  end
end
