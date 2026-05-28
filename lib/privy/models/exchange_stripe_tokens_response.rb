# frozen_string_literal: true

module Privy
  module Models
    class ExchangeStripeTokensResponse < Privy::Internal::Type::BaseModel
      # @!attribute crypto_customer_id
      #
      #   @return [String]
      required :crypto_customer_id, String

      # @!method initialize(crypto_customer_id:)
      #   Confirmation that tokens were exchanged and stored.
      #
      #   @param crypto_customer_id [String]
    end
  end
end
