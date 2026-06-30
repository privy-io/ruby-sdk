# frozen_string_literal: true

module Privy
  module Models
    class KrakenEmbedGetPortfolioSummaryResult < Privy::Internal::Type::BaseModel
      # @!attribute result
      #   Portfolio summary payload containing balances, value, and profit/loss
      #   information.
      #
      #   @return [Privy::Models::KrakenEmbedPortfolioSummaryPayload, nil]
      required :result, -> { Privy::KrakenEmbedPortfolioSummaryPayload }, nil?: true

      # @!attribute error
      #
      #   @return [Array<String>, nil]
      optional :error, Privy::Internal::Type::ArrayOf[String]

      # @!attribute errors
      #
      #   @return [Array<String>, nil]
      optional :errors, Privy::Internal::Type::ArrayOf[String]

      # @!method initialize(result:, error: nil, errors: nil)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::KrakenEmbedGetPortfolioSummaryResult} for more details.
      #
      #   Kraken API response envelope for portfolio summary, containing optional errors
      #   and the result payload.
      #
      #   @param result [Privy::Models::KrakenEmbedPortfolioSummaryPayload, nil] Portfolio summary payload containing balances, value, and profit/loss informatio
      #
      #   @param error [Array<String>]
      #
      #   @param errors [Array<String>]
    end
  end
end
