# frozen_string_literal: true

module Privy
  module Models
    class CreatePayoutRequestBody < Privy::Internal::Type::BaseModel
      # @!attribute destination
      #   The destination bank account for a payout.
      #
      #   @return [Privy::Models::PayoutDestination]
      required :destination, -> { Privy::PayoutDestination }

      # @!attribute source
      #   The source crypto asset, chain, and amount for a payout.
      #
      #   @return [Privy::Models::PayoutSource]
      required :source, -> { Privy::PayoutSource }

      # @!method initialize(destination:, source:)
      #   Request body for initiating a payout (crypto to fiat offramp) from a wallet.
      #
      #   @param destination [Privy::Models::PayoutDestination] The destination bank account for a payout.
      #
      #   @param source [Privy::Models::PayoutSource] The source crypto asset, chain, and amount for a payout.
    end
  end
end
