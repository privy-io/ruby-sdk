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

      # @!attribute developer_fee_percent
      #   A developer fee as a percentage string from 0 up to (not including) 100, e.g.
      #   "1.5" for 1.5%.
      #
      #   @return [String, nil]
      optional :developer_fee_percent, String

      # @!attribute travel_rule
      #   Travel rule information about who receives a payout.
      #
      #   @return [Privy::Models::PayoutTravelRule, nil]
      optional :travel_rule, -> { Privy::PayoutTravelRule }

      # @!method initialize(destination:, source:, developer_fee_percent: nil, travel_rule: nil)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::CreatePayoutRequestBody} for more details.
      #
      #   Request body for initiating a payout (crypto to fiat offramp) from a wallet.
      #
      #   @param destination [Privy::Models::PayoutDestination] The destination bank account for a payout.
      #
      #   @param source [Privy::Models::PayoutSource] The source crypto asset, chain, and amount for a payout.
      #
      #   @param developer_fee_percent [String] A developer fee as a percentage string from 0 up to (not including) 100, e.g. "1
      #
      #   @param travel_rule [Privy::Models::PayoutTravelRule] Travel rule information about who receives a payout.
    end
  end
end
