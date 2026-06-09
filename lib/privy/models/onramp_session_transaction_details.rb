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

      # @!attribute fees
      #   Fee breakdown for a Stripe onramp transaction.
      #
      #   @return [Privy::Models::OnrampSessionFees, nil]
      required :fees, -> { Privy::OnrampSessionFees }, nil?: true

      # @!attribute source_currency
      #
      #   @return [String, nil]
      required :source_currency, String, nil?: true

      # @!attribute source_total_amount
      #
      #   @return [String, nil]
      required :source_total_amount, String, nil?: true

      # @!method initialize(destination_amount:, destination_currency:, destination_network:, fees:, source_currency:, source_total_amount:)
      #   Transaction details returned from a Stripe onramp session.
      #
      #   @param destination_amount [String, nil]
      #
      #   @param destination_currency [String, nil]
      #
      #   @param destination_network [String, nil]
      #
      #   @param fees [Privy::Models::OnrampSessionFees, nil] Fee breakdown for a Stripe onramp transaction.
      #
      #   @param source_currency [String, nil]
      #
      #   @param source_total_amount [String, nil]
    end
  end
end
