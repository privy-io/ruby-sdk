# frozen_string_literal: true

module Privy
  module Models
    class KrakenEmbedCustomOrderAction < Privy::Internal::Type::BaseModel
      # @!attribute amount
      #   Asset amount for custom order actions.
      #
      #   @return [Privy::Models::KrakenEmbedCustomOrderAmount]
      required :amount, -> { Privy::KrakenEmbedCustomOrderAmount }

      # @!attribute fee_bps
      #
      #   @return [String]
      required :fee_bps, String

      # @!attribute quote
      #   Target asset for the other side of the custom order trade.
      #
      #   @return [Privy::Models::KrakenEmbedCustomOrderQuoteAsset]
      required :quote, -> { Privy::KrakenEmbedCustomOrderQuoteAsset }

      # @!attribute spread_bps
      #
      #   @return [String]
      required :spread_bps, String

      # @!attribute type
      #   Whether the quote amount refers to the asset being received or spent.
      #
      #   @return [Symbol, Privy::Models::KrakenEmbedQuoteType]
      required :type, enum: -> { Privy::KrakenEmbedQuoteType }

      # @!method initialize(amount:, fee_bps:, quote:, spread_bps:, type:)
      #   Trade action for a custom order.
      #
      #   @param amount [Privy::Models::KrakenEmbedCustomOrderAmount] Asset amount for custom order actions.
      #
      #   @param fee_bps [String]
      #
      #   @param quote [Privy::Models::KrakenEmbedCustomOrderQuoteAsset] Target asset for the other side of the custom order trade.
      #
      #   @param spread_bps [String]
      #
      #   @param type [Symbol, Privy::Models::KrakenEmbedQuoteType] Whether the quote amount refers to the asset being received or spent.
    end
  end
end
