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
      #
      #   @return [Symbol, Privy::Models::KrakenEmbedCustomOrderAction::Type]
      required :type, enum: -> { Privy::KrakenEmbedCustomOrderAction::Type }

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
      #   @param type [Symbol, Privy::Models::KrakenEmbedCustomOrderAction::Type]

      # @see Privy::Models::KrakenEmbedCustomOrderAction#type
      module Type
        extend Privy::Internal::Type::Enum

        RECEIVE = :receive
        SPEND = :spend

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
