# frozen_string_literal: true

module Privy
  module Models
    class AutomationConfig < Privy::Internal::Type::BaseModel
      # @!attribute action
      #   Configuration for an automation action.
      #
      #   @return [Privy::Models::AutomationSwapActionConfig, Privy::Models::AutomationEarnDepositActionConfig]
      required :action, union: -> { Privy::AutomationActionConfig }

      # @!attribute trigger
      #   Trigger configuration for deposit events.
      #
      #   @return [Privy::Models::AutomationTriggerConfig]
      required :trigger, -> { Privy::AutomationTriggerConfig }

      # @!method initialize(action:, trigger:)
      #   Full configuration for a wallet automation (trigger + action).
      #
      #   @param action [Privy::Models::AutomationSwapActionConfig, Privy::Models::AutomationEarnDepositActionConfig] Configuration for an automation action.
      #
      #   @param trigger [Privy::Models::AutomationTriggerConfig] Trigger configuration for deposit events.
    end
  end
end
