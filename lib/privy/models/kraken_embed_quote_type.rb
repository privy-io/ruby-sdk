# frozen_string_literal: true

module Privy
  module Models
    # Whether the quote amount refers to the asset being received or spent.
    module KrakenEmbedQuoteType
      extend Privy::Internal::Type::Enum

      RECEIVE = :receive
      SPEND = :spend

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
