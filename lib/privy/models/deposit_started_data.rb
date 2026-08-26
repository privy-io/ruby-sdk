# frozen_string_literal: true

module Privy
  module Models
    class DepositStartedData < Privy::Internal::Type::BaseModel
      # @!attribute created_at
      #
      #   @return [String]
      required :created_at, String

      # @!attribute destination
      #   The crypto asset and chain the fiat deposit is being converted into.
      #
      #   @return [Privy::Models::DepositStartedDestination]
      required :destination, -> { Privy::DepositStartedDestination }

      # @!attribute source
      #   The fiat deposit that was received, including amount, currency, and originator.
      #
      #   @return [Privy::Models::DepositStartedSource]
      required :source, -> { Privy::DepositStartedSource }

      # @!method initialize(created_at:, destination:, source:)
      #   Details of a fiat deposit that has begun processing into a deposit account.
      #
      #   @param created_at [String]
      #
      #   @param destination [Privy::Models::DepositStartedDestination] The crypto asset and chain the fiat deposit is being converted into.
      #
      #   @param source [Privy::Models::DepositStartedSource] The fiat deposit that was received, including amount, currency, and originator.
    end
  end
end
