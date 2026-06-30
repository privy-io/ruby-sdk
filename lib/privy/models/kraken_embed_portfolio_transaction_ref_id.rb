# frozen_string_literal: true

module Privy
  module Models
    class KrakenEmbedPortfolioTransactionRefID < Privy::Internal::Type::BaseModel
      # @!attribute ref_id
      #
      #   @return [String]
      required :ref_id, String

      # @!attribute type
      #   The type of reference ID used to filter portfolio transactions by quote or
      #   failed quote references.
      #
      #   @return [Symbol, Privy::Models::KrakenEmbedPortfolioTransactionRefIDType]
      required :type, enum: -> { Privy::KrakenEmbedPortfolioTransactionRefIDType }

      # @!method initialize(ref_id:, type:)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::KrakenEmbedPortfolioTransactionRefID} for more details.
      #
      #   A reference ID filter for portfolio transaction queries, identifying a
      #   transaction by type and reference identifier.
      #
      #   @param ref_id [String]
      #
      #   @param type [Symbol, Privy::Models::KrakenEmbedPortfolioTransactionRefIDType] The type of reference ID used to filter portfolio transactions by quote or faile
    end
  end
end
