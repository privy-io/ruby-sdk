# frozen_string_literal: true

module Privy
  module Models
    class KYBPubliclyTradedListing < Privy::Internal::Type::BaseModel
      # @!attribute market_identifier_code
      #   ISO 10383 market identifier code of the listing venue.
      #
      #   @return [String]
      required :market_identifier_code, String

      # @!attribute stock_number
      #   ISIN with dashes removed.
      #
      #   @return [String]
      required :stock_number, String

      # @!attribute ticker
      #   Exchange ticker symbol.
      #
      #   @return [String]
      required :ticker, String

      # @!method initialize(market_identifier_code:, stock_number:, ticker:)
      #   A public exchange listing for the business.
      #
      #   @param market_identifier_code [String] ISO 10383 market identifier code of the listing venue.
      #
      #   @param stock_number [String] ISIN with dashes removed.
      #
      #   @param ticker [String] Exchange ticker symbol.
    end
  end
end
