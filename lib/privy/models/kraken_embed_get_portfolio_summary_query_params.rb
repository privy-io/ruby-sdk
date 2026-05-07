# frozen_string_literal: true

module Privy
  module Models
    class KrakenEmbedGetPortfolioSummaryQueryParams < Privy::Internal::Type::BaseModel
      # @!attribute include_current_day_pnl
      #
      #   @return [Symbol, Privy::Models::KrakenEmbedGetPortfolioSummaryQueryParams::IncludeCurrentDayPnl, nil]
      optional :include_current_day_pnl,
               enum: -> { Privy::KrakenEmbedGetPortfolioSummaryQueryParams::IncludeCurrentDayPnl },
               api_name: :"include[current_day_pnl]"

      # @!attribute quote
      #
      #   @return [String, nil]
      optional :quote, String

      # @!method initialize(include_current_day_pnl: nil, quote: nil)
      #   Query parameters for getting a portfolio summary.
      #
      #   @param include_current_day_pnl [Symbol, Privy::Models::KrakenEmbedGetPortfolioSummaryQueryParams::IncludeCurrentDayPnl]
      #   @param quote [String]

      # @see Privy::Models::KrakenEmbedGetPortfolioSummaryQueryParams#include_current_day_pnl
      module IncludeCurrentDayPnl
        extend Privy::Internal::Type::Enum

        TRUE = :true
        FALSE = :false

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
