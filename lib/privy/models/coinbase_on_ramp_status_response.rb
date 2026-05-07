# frozen_string_literal: true

module Privy
  module Models
    class CoinbaseOnRampStatusResponse < Privy::Internal::Type::BaseModel
      # @!attribute status
      #   Status of a Coinbase on-ramp session.
      #
      #   @return [Symbol, Privy::Models::CoinbaseOnRampStatus]
      required :status, enum: -> { Privy::CoinbaseOnRampStatus }

      # @!method initialize(status:)
      #   The response for getting the status of a Coinbase on-ramp session.
      #
      #   @param status [Symbol, Privy::Models::CoinbaseOnRampStatus] Status of a Coinbase on-ramp session.
    end
  end
end
