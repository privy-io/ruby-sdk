# frozen_string_literal: true

module Privy
  module Models
    class OnrampSessionFees < Privy::Internal::Type::BaseModel
      # @!attribute network_fee_monetary
      #
      #   @return [String, nil]
      required :network_fee_monetary, String, nil?: true

      # @!attribute transaction_fee_monetary
      #
      #   @return [String, nil]
      required :transaction_fee_monetary, String, nil?: true

      # @!method initialize(network_fee_monetary:, transaction_fee_monetary:)
      #   Fee breakdown for a Stripe onramp transaction.
      #
      #   @param network_fee_monetary [String, nil]
      #   @param transaction_fee_monetary [String, nil]
    end
  end
end
