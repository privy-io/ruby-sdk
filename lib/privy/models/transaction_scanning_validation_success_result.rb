# frozen_string_literal: true

module Privy
  module Models
    class TransactionScanningValidationSuccessResult < Privy::Internal::Type::BaseModel
      # @!attribute result_type
      #
      #   @return [String]
      required :result_type, String

      # @!attribute status
      #
      #   @return [Symbol, Privy::Models::TransactionScanningValidationSuccessResult::Status]
      required :status, enum: -> { Privy::TransactionScanningValidationSuccessResult::Status }

      # @!method initialize(result_type:, status:)
      #   A successful validation result from a transaction scan.
      #
      #   @param result_type [String]
      #   @param status [Symbol, Privy::Models::TransactionScanningValidationSuccessResult::Status]

      # @see Privy::Models::TransactionScanningValidationSuccessResult#status
      module Status
        extend Privy::Internal::Type::Enum

        SUCCESS = :Success

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
