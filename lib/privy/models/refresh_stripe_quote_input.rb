# frozen_string_literal: true

module Privy
  module Models
    class RefreshStripeQuoteInput < Privy::Internal::Type::BaseModel
      # @!attribute auth_intent_id
      #
      #   @return [String]
      required :auth_intent_id, String

      # @!method initialize(auth_intent_id:)
      #   Input for refreshing an onramp session quote.
      #
      #   @param auth_intent_id [String]
    end
  end
end
