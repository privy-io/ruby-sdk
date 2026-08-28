# frozen_string_literal: true

module Privy
  module Models
    # Configuration for an automation action.
    module AutomationActionConfig
      extend Privy::Internal::Type::Union

      discriminator :type

      # Action configuration for swap operations.
      variant :swap, -> { Privy::AutomationSwapActionConfig }

      # Action configuration for depositing into an Earn vault.
      variant :earn_deposit, -> { Privy::AutomationEarnDepositActionConfig }

      # @!method self.variants
      #   @return [Array(Privy::Models::AutomationSwapActionConfig, Privy::Models::AutomationEarnDepositActionConfig)]
    end
  end
end
