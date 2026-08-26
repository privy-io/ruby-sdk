# frozen_string_literal: true

module Privy
  module Models
    # Automation lifecycle state: 'enabled' = running, 'disabled' = not running.
    module WalletAutomationStatus
      extend Privy::Internal::Type::Enum

      ENABLED = :enabled
      DISABLED = :disabled

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
