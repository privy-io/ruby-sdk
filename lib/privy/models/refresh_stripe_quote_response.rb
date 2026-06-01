# frozen_string_literal: true

module Privy
  module Models
    class RefreshStripeQuoteResponse < Privy::Internal::Type::BaseModel
      # @!attribute quote
      #   A refreshed quote.
      #
      #   @return [Privy::Models::StripeQuote]
      required :quote, -> { Privy::StripeQuote }

      # @!method initialize(quote:)
      #   Refreshed quote with new expiry.
      #
      #   @param quote [Privy::Models::StripeQuote] A refreshed quote.
    end
  end
end
