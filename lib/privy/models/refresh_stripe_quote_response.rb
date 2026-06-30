# frozen_string_literal: true

module Privy
  module Models
    class RefreshStripeQuoteResponse < Privy::Internal::Type::BaseModel
      # @!attribute destination_amount
      #
      #   @return [String, nil]
      required :destination_amount, String, nil?: true

      # @!attribute fee
      #
      #   @return [String, nil]
      required :fee, String, nil?: true

      # @!attribute quote_expiration
      #
      #   @return [Float, nil]
      required :quote_expiration, Float, nil?: true

      # @!attribute source_total_amount
      #
      #   @return [String, nil]
      required :source_total_amount, String, nil?: true

      # @!method initialize(destination_amount:, fee:, quote_expiration:, source_total_amount:)
      #   Refreshed quote with amounts, fee, and expiry.
      #
      #   @param destination_amount [String, nil]
      #   @param fee [String, nil]
      #   @param quote_expiration [Float, nil]
      #   @param source_total_amount [String, nil]
    end
  end
end
