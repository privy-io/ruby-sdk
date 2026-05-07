# frozen_string_literal: true

module Privy
  module Models
    class TransactionScanningResponseBody < Privy::Internal::Type::BaseModel
      # @!attribute simulation
      #   The simulation result from a transaction scan.
      #
      #   @return [Privy::Models::TransactionScanningSimulationErrorResult, Privy::Models::TransactionScanningSimulationSuccessResult]
      required :simulation, union: -> { Privy::TransactionScanningSimulationResult }

      # @!attribute validation
      #   The validation result from a transaction scan.
      #
      #   @return [Privy::Models::TransactionScanningValidationErrorResult, Privy::Models::TransactionScanningValidationSuccessResult]
      required :validation, union: -> { Privy::TransactionScanningValidationResult }

      # @!method initialize(simulation:, validation:)
      #   The response from scanning a transaction.
      #
      #   @param simulation [Privy::Models::TransactionScanningSimulationErrorResult, Privy::Models::TransactionScanningSimulationSuccessResult] The simulation result from a transaction scan.
      #
      #   @param validation [Privy::Models::TransactionScanningValidationErrorResult, Privy::Models::TransactionScanningValidationSuccessResult] The validation result from a transaction scan.
    end
  end
end
