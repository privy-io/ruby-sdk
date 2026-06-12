# frozen_string_literal: true

module Privy
  module Models
    class KrakenEmbedPortfolioTransactionRefID < Privy::Internal::Type::BaseModel
      # @!attribute ref_id
      #
      #   @return [String]
      required :ref_id, String

      # @!attribute type
      #
      #   @return [Symbol, Privy::Models::KrakenEmbedPortfolioTransactionRefID::Type]
      required :type, enum: -> { Privy::KrakenEmbedPortfolioTransactionRefID::Type }

      # @!method initialize(ref_id:, type:)
      #   A reference ID filter for portfolio transaction queries, identifying a
      #   transaction by type and reference identifier.
      #
      #   @param ref_id [String]
      #   @param type [Symbol, Privy::Models::KrakenEmbedPortfolioTransactionRefID::Type]

      # @see Privy::Models::KrakenEmbedPortfolioTransactionRefID#type
      module Type
        extend Privy::Internal::Type::Enum

        SIMPLE_ORDER_QUOTE = :simple_order_quote
        SIMPLE_ORDER_QUOTE_FAILED = :simple_order_quote_failed

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
