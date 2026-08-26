# frozen_string_literal: true

module Privy
  module Models
    class DepositCompletedData < Privy::Internal::Type::BaseModel
      # @!attribute created_at
      #
      #   @return [String]
      required :created_at, String

      # @!attribute destination
      #   The crypto asset, chain, delivered amount, and settlement transaction for a
      #   completed deposit.
      #
      #   @return [Privy::Models::DepositCompletedDestination]
      required :destination, -> { Privy::DepositCompletedDestination }

      # @!attribute source
      #   The fiat deposit that was received, including amount, currency, and originator.
      #
      #   @return [Privy::Models::DepositStartedSource]
      required :source, -> { Privy::DepositStartedSource }

      # @!method initialize(created_at:, destination:, source:)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::DepositCompletedData} for more details.
      #
      #   Details of a fiat deposit that has finished converting and been delivered to the
      #   wallet.
      #
      #   @param created_at [String]
      #
      #   @param destination [Privy::Models::DepositCompletedDestination] The crypto asset, chain, delivered amount, and settlement transaction for a comp
      #
      #   @param source [Privy::Models::DepositStartedSource] The fiat deposit that was received, including amount, currency, and originator.
    end
  end
end
