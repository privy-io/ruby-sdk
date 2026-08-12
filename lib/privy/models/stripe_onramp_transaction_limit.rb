# frozen_string_literal: true

module Privy
  module Models
    class StripeOnrampTransactionLimit < Privy::Internal::Type::BaseModel
      # @!attribute limit
      #   The remaining amount available for the payment method.
      #
      #   @return [Float]
      required :limit, Float

      # @!method initialize(limit:)
      #   The remaining Stripe onramp amount for a payment method.
      #
      #   @param limit [Float] The remaining amount available for the payment method.
    end
  end
end
