# frozen_string_literal: true

module Privy
  module Models
    class StripeQuote < Privy::Internal::Type::BaseModel
      # @!attribute expires_at
      #
      #   @return [Float]
      required :expires_at, Float

      # @!method initialize(expires_at:)
      #   A refreshed quote.
      #
      #   @param expires_at [Float]
    end
  end
end
