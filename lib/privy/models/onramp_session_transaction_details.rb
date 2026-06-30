# frozen_string_literal: true

module Privy
  module Models
    class OnrampSessionTransactionDetails < Privy::Internal::Type::BaseModel
      # @!attribute destination_amount
      #
      #   @return [String, nil]
      required :destination_amount, String, nil?: true

      # @!attribute destination_currency
      #
      #   @return [String, nil]
      required :destination_currency, String, nil?: true

      # @!attribute destination_network
      #
      #   @return [String, nil]
      required :destination_network, String, nil?: true

      # @!attribute fee
      #
      #   @return [String, nil]
      required :fee, String, nil?: true

      # @!attribute source_currency
      #
      #   @return [String, nil]
      required :source_currency, String, nil?: true

      # @!attribute source_total_amount
      #
      #   @return [String, nil]
      required :source_total_amount, String, nil?: true

      # @!attribute quote_expiration
      #
      #   @return [Float, nil]
      optional :quote_expiration, Float, nil?: true

      # @!method initialize(destination_amount:, destination_currency:, destination_network:, fee:, source_currency:, source_total_amount:, quote_expiration: nil)
      #   Transaction details returned from a Stripe onramp session.
      #
      #   @param destination_amount [String, nil]
      #   @param destination_currency [String, nil]
      #   @param destination_network [String, nil]
      #   @param fee [String, nil]
      #   @param source_currency [String, nil]
      #   @param source_total_amount [String, nil]
      #   @param quote_expiration [Float, nil]
    end
  end
end
