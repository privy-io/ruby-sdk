# frozen_string_literal: true

module Privy
  module Models
    # The simulation result from a transaction scan.
    module TransactionScanningSimulationResult
      extend Privy::Internal::Type::Union

      discriminator :status

      # A failed simulation result from a transaction scan.
      variant :Error, -> { Privy::TransactionScanningSimulationErrorResult }

      # A successful simulation result from a transaction scan.
      variant :Success, -> { Privy::TransactionScanningSimulationSuccessResult }

      # @!method self.variants
      #   @return [Array(Privy::Models::TransactionScanningSimulationErrorResult, Privy::Models::TransactionScanningSimulationSuccessResult)]
    end
  end
end
