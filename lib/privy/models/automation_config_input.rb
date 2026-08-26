# frozen_string_literal: true

module Privy
  module Models
    class AutomationConfigInput < Privy::Internal::Type::BaseModel
      # @!attribute action
      #   Action configuration for swap operations (input form with alias support).
      #
      #   @return [Privy::Models::AutomationActionConfigInput]
      required :action, -> { Privy::AutomationActionConfigInput }

      # @!attribute trigger
      #   Trigger configuration for deposit events (input form with alias support).
      #
      #   @return [Privy::Models::AutomationTriggerConfigInput]
      required :trigger, -> { Privy::AutomationTriggerConfigInput }

      # @!method initialize(action:, trigger:)
      #   Full configuration for a wallet automation (trigger + action) accepting
      #   human-readable aliases.
      #
      #   @param action [Privy::Models::AutomationActionConfigInput] Action configuration for swap operations (input form with alias support).
      #
      #   @param trigger [Privy::Models::AutomationTriggerConfigInput] Trigger configuration for deposit events (input form with alias support).
    end
  end
end
