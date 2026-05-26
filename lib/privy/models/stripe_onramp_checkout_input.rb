# frozen_string_literal: true

module Privy
  module Models
    class StripeOnrampCheckoutInput < Privy::Internal::Type::BaseModel
      # @!attribute auth_intent_id
      #
      #   @return [String]
      required :auth_intent_id, String

      # @!method initialize(auth_intent_id:)
      #   Input for confirming an onramp session checkout.
      #
      #   @param auth_intent_id [String]
    end
  end
end
