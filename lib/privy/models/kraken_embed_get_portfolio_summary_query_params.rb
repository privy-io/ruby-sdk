# frozen_string_literal: true

module Privy
  module Models
    class KrakenEmbedGetPortfolioSummaryQueryParams < Privy::Internal::Type::BaseModel
      # @!attribute include_current_day_pnl
      #   A string-encoded boolean query parameter on including current day profit and
      #   loss.
      #
      #   @return [Symbol, Privy::Models::KrakenEmbedIncludeCurrentDayPnlQueryParam, nil]
      optional :include_current_day_pnl,
               enum: -> { Privy::KrakenEmbedIncludeCurrentDayPnlQueryParam },
               api_name: :"include[current_day_pnl]"

      # @!attribute quote
      #
      #   @return [String, nil]
      optional :quote, String

      # @!method initialize(include_current_day_pnl: nil, quote: nil)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::KrakenEmbedGetPortfolioSummaryQueryParams} for more details.
      #
      #   Query parameters for getting a portfolio summary.
      #
      #   @param include_current_day_pnl [Symbol, Privy::Models::KrakenEmbedIncludeCurrentDayPnlQueryParam] A string-encoded boolean query parameter on including current day profit and los
      #
      #   @param quote [String]
    end
  end
end
