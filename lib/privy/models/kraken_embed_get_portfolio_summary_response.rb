# frozen_string_literal: true

module Privy
  module Models
    class KrakenEmbedGetPortfolioSummaryResponse < Privy::Internal::Type::BaseModel
      # @!attribute data
      #   Kraken API response envelope for portfolio summary, containing optional errors
      #   and the result payload.
      #
      #   @return [Privy::Models::KrakenEmbedGetPortfolioSummaryResult]
      required :data, -> { Privy::KrakenEmbedGetPortfolioSummaryResult }

      # @!method initialize(data:)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::KrakenEmbedGetPortfolioSummaryResponse} for more details.
      #
      #   High-level summary of a user's portfolio including total value, available
      #   balance, and unrealized P&L.
      #
      #   @param data [Privy::Models::KrakenEmbedGetPortfolioSummaryResult] Kraken API response envelope for portfolio summary, containing optional errors a
    end
  end
end
