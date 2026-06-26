# frozen_string_literal: true

module Privy
  module Models
    # Sorting options for the asset list endpoint.
    module KrakenEmbedAssetSortOption
      extend Privy::Internal::Type::Enum

      TRENDING = :trending
      MARKET_CAP_RANK = :market_cap_rank
      MINUS_MARKET_CAP_RANK = :"-market_cap_rank"
      SYMBOL = :symbol
      MINUS_SYMBOL = :"-symbol"
      NAME = :name
      MINUS_NAME = :"-name"
      CHANGE_PERCENT_1H = :change_percent_1h
      MINUS_CHANGE_PERCENT_1_H = :"-change_percent_1h"
      CHANGE_PERCENT_24H = :change_percent_24h
      MINUS_CHANGE_PERCENT_24_H = :"-change_percent_24h"
      CHANGE_PERCENT_7D = :change_percent_7d
      MINUS_CHANGE_PERCENT_7_D = :"-change_percent_7d"
      CHANGE_PERCENT_30D = :change_percent_30d
      MINUS_CHANGE_PERCENT_30_D = :"-change_percent_30d"
      CHANGE_PERCENT_1Y = :change_percent_1y
      MINUS_CHANGE_PERCENT_1_Y = :"-change_percent_1y"
      LISTING_DATE = :listing_date
      MINUS_LISTING_DATE = :"-listing_date"

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
