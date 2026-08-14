# frozen_string_literal: true

module Privy
  module Models
    class CardIssuingEphemeralKeyResponse < Privy::Internal::Type::BaseModel
      # @!attribute data
      #   Short-lived Stripe authorization for displaying card details.
      #
      #   @return [Privy::Models::CardIssuingEphemeralKey]
      required :data, -> { Privy::CardIssuingEphemeralKey }

      # @!method initialize(data:)
      #   Short-lived Stripe authorization for displaying an authenticated card.
      #
      #   @param data [Privy::Models::CardIssuingEphemeralKey] Short-lived Stripe authorization for displaying card details.
    end
  end
end
