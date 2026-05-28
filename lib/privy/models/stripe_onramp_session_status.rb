# frozen_string_literal: true

module Privy
  module Models
    # The state of the user's Stripe onramp session.
    module StripeOnrampSessionStatus
      extend Privy::Internal::Type::Enum

      ACTIVE = :active
      EXPIRED = :expired
      NONE = :none

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
