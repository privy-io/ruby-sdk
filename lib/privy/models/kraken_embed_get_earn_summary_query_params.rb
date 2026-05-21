# frozen_string_literal: true

module Privy
  module Models
    class KrakenEmbedGetEarnSummaryQueryParams < Privy::Internal::Type::BaseModel
      # @!attribute currency
      #
      #   @return [String]
      required :currency, String

      # @!method initialize(currency:)
      #   Query parameters for getting an earn summary.
      #
      #   @param currency [String]
    end
  end
end
