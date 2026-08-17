# frozen_string_literal: true

module Privy
  module Models
    class CardIssuingConfigResponse < Privy::Internal::Type::BaseModel
      # @!attribute data
      #   Browser-safe configuration for rendering Stripe Issuing card details.
      #
      #   @return [Privy::Models::CardIssuingConfig]
      required :data, -> { Privy::CardIssuingConfig }

      # @!method initialize(data:)
      #   Browser-safe card-issuing configuration for the authenticated user's app.
      #
      #   @param data [Privy::Models::CardIssuingConfig] Browser-safe configuration for rendering Stripe Issuing card details.
    end
  end
end
