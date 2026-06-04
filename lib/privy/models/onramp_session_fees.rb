# frozen_string_literal: true

module Privy
  module Models
    class OnrampSessionFees < Privy::Internal::Type::BaseModel
      # @!attribute network_fee_amount
      #
      #   @return [String, nil]
      required :network_fee_amount, String, nil?: true

      # @!attribute transaction_fee_amount
      #
      #   @return [String, nil]
      required :transaction_fee_amount, String, nil?: true

      # @!method initialize(network_fee_amount:, transaction_fee_amount:)
      #   Fee breakdown for a Stripe onramp transaction.
      #
      #   @param network_fee_amount [String, nil]
      #   @param transaction_fee_amount [String, nil]
    end
  end
end
