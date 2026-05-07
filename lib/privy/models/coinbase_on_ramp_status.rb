# frozen_string_literal: true

module Privy
  module Models
    # Status of a Coinbase on-ramp session.
    module CoinbaseOnRampStatus
      extend Privy::Internal::Type::Enum

      PENDING = :pending
      SUCCESS = :success
      FAILURE = :failure

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
