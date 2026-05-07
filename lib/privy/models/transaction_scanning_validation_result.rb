# frozen_string_literal: true

module Privy
  module Models
    # The validation result from a transaction scan.
    module TransactionScanningValidationResult
      extend Privy::Internal::Type::Union

      discriminator :status

      # A failed validation result from a transaction scan.
      variant :Error, -> { Privy::TransactionScanningValidationErrorResult }

      # A successful validation result from a transaction scan.
      variant :Success, -> { Privy::TransactionScanningValidationSuccessResult }

      # @!method self.variants
      #   @return [Array(Privy::Models::TransactionScanningValidationErrorResult, Privy::Models::TransactionScanningValidationSuccessResult)]
    end
  end
end
