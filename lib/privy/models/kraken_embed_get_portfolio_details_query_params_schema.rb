# frozen_string_literal: true

module Privy
  module Models
    class KrakenEmbedGetPortfolioDetailsQueryParamsSchema < Privy::Internal::Type::BaseModel
      # @!attribute quote
      #
      #   @return [String, nil]
      optional :quote, String

      # @!method initialize(quote: nil)
      #   Query parameters for portfolio details endpoint.
      #
      #   @param quote [String]
    end
  end
end
