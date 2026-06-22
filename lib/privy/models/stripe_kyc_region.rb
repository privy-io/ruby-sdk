# frozen_string_literal: true

module Privy
  module Models
    # Region derived from a Stripe user's country of residence.
    module StripeKYCRegion
      extend Privy::Internal::Type::Enum

      US = :us
      EU = :eu

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
