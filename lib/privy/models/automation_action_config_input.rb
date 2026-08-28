# frozen_string_literal: true

module Privy
  module Models
    # Configuration for an automation action (input form with alias support).
    module AutomationActionConfigInput
      extend Privy::Internal::Type::Union

      discriminator :type

      # Action configuration for swap operations (input form with alias support).
      variant :swap, -> { Privy::AutomationSwapActionConfigInput }

      # Action configuration for depositing into an Earn vault (input form).
      variant :earn_deposit, -> { Privy::AutomationEarnDepositActionConfigInput }

      # @!method self.variants
      #   @return [Array(Privy::Models::AutomationSwapActionConfigInput, Privy::Models::AutomationEarnDepositActionConfigInput)]
    end
  end
end
