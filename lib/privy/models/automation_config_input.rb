# frozen_string_literal: true

module Privy
  module Models
    class AutomationConfigInput < Privy::Internal::Type::BaseModel
      # @!attribute action
      #   Configuration for an automation action (input form with alias support).
      #
      #   @return [Privy::Models::AutomationSwapActionConfigInput, Privy::Models::AutomationEarnDepositActionConfigInput]
      required :action, union: -> { Privy::AutomationActionConfigInput }

      # @!attribute trigger
      #   Trigger configuration for deposit events (input form with alias support).
      #
      #   @return [Privy::Models::AutomationTriggerConfigInput]
      required :trigger, -> { Privy::AutomationTriggerConfigInput }

      # @!method initialize(action:, trigger:)
      #   Full configuration for a wallet automation (trigger + action) accepting
      #   human-readable aliases.
      #
      #   @param action [Privy::Models::AutomationSwapActionConfigInput, Privy::Models::AutomationEarnDepositActionConfigInput] Configuration for an automation action (input form with alias support).
      #
      #   @param trigger [Privy::Models::AutomationTriggerConfigInput] Trigger configuration for deposit events (input form with alias support).
    end
  end
end
