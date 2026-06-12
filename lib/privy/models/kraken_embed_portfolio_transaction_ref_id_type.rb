# frozen_string_literal: true

module Privy
  module Models
    # The type of reference ID used to filter portfolio transactions by quote or
    # failed quote references.
    module KrakenEmbedPortfolioTransactionRefIDType
      extend Privy::Internal::Type::Enum

      SIMPLE_ORDER_QUOTE = :simple_order_quote
      SIMPLE_ORDER_QUOTE_FAILED = :simple_order_quote_failed

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
