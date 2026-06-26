# frozen_string_literal: true

module Privy
  module Models
    # Status of a blockchain transaction submitted by Privy.
    module BlockchainTransactionStatus
      extend Privy::Internal::Type::Enum

      BROADCASTED = :broadcasted
      CONFIRMED = :confirmed
      EXECUTION_REVERTED = :execution_reverted
      FAILED = :failed
      REPLACED = :replaced
      FINALIZED = :finalized
      PROVIDER_ERROR = :provider_error
      PENDING = :pending

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
