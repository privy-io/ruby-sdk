# frozen_string_literal: true

module Privy
  module Models
    # Execution lifecycle status.
    module WalletAutomationExecutionStatus
      extend Privy::Internal::Type::Enum

      PENDING = :pending
      TRIGGERED = :triggered
      COMPLETED = :completed
      FAILED = :failed
      SKIPPED = :skipped

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
