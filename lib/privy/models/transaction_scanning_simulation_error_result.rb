# frozen_string_literal: true

module Privy
  module Models
    class TransactionScanningSimulationErrorResult < Privy::Internal::Type::BaseModel
      # @!attribute error
      #
      #   @return [String]
      required :error, String

      # @!attribute status
      #
      #   @return [Symbol, Privy::Models::TransactionScanningSimulationErrorResult::Status]
      required :status, enum: -> { Privy::TransactionScanningSimulationErrorResult::Status }

      # @!method initialize(error:, status:)
      #   A failed simulation result from a transaction scan.
      #
      #   @param error [String]
      #   @param status [Symbol, Privy::Models::TransactionScanningSimulationErrorResult::Status]

      # @see Privy::Models::TransactionScanningSimulationErrorResult#status
      module Status
        extend Privy::Internal::Type::Enum

        ERROR = :Error

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
