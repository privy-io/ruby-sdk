# frozen_string_literal: true

module Privy
  module Models
    class TransactionScanningValidationErrorResult < Privy::Internal::Type::BaseModel
      # @!attribute error
      #
      #   @return [String]
      required :error, String

      # @!attribute status
      #
      #   @return [Symbol, Privy::Models::TransactionScanningValidationErrorResult::Status]
      required :status, enum: -> { Privy::TransactionScanningValidationErrorResult::Status }

      # @!method initialize(error:, status:)
      #   A failed validation result from a transaction scan.
      #
      #   @param error [String]
      #   @param status [Symbol, Privy::Models::TransactionScanningValidationErrorResult::Status]

      # @see Privy::Models::TransactionScanningValidationErrorResult#status
      module Status
        extend Privy::Internal::Type::Enum

        ERROR = :Error

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
