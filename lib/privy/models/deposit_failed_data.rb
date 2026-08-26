# frozen_string_literal: true

module Privy
  module Models
    class DepositFailedData < Privy::Internal::Type::BaseModel
      # @!attribute created_at
      #
      #   @return [String]
      required :created_at, String

      # @!attribute destination
      #   The crypto asset and chain the fiat deposit is being converted into.
      #
      #   @return [Privy::Models::DepositStartedDestination]
      required :destination, -> { Privy::DepositStartedDestination }

      # @!attribute reason
      #
      #   @return [String]
      required :reason, String

      # @!attribute reason_code
      #
      #   @return [String]
      required :reason_code, String

      # @!attribute refunded_at
      #
      #   @return [String]
      required :refunded_at, String

      # @!attribute source
      #   The fiat deposit that was received, including amount, currency, and originator.
      #
      #   @return [Privy::Models::DepositStartedSource]
      required :source, -> { Privy::DepositStartedSource }

      # @!method initialize(created_at:, destination:, reason:, reason_code:, refunded_at:, source:)
      #   Details of a fiat deposit that failed to convert and was refunded to the sender.
      #
      #   @param created_at [String]
      #
      #   @param destination [Privy::Models::DepositStartedDestination] The crypto asset and chain the fiat deposit is being converted into.
      #
      #   @param reason [String]
      #
      #   @param reason_code [String]
      #
      #   @param refunded_at [String]
      #
      #   @param source [Privy::Models::DepositStartedSource] The fiat deposit that was received, including amount, currency, and originator.
    end
  end
end
