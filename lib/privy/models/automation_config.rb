# frozen_string_literal: true

module Privy
  module Models
    class AutomationConfig < Privy::Internal::Type::BaseModel
      # @!attribute action
      #   Action configuration for swap operations.
      #
      #   @return [Privy::Models::AutomationActionConfig]
      required :action, -> { Privy::AutomationActionConfig }

      # @!attribute trigger
      #   Trigger configuration for deposit events.
      #
      #   @return [Privy::Models::AutomationTriggerConfig]
      required :trigger, -> { Privy::AutomationTriggerConfig }

      # @!method initialize(action:, trigger:)
      #   Full configuration for a wallet automation (trigger + action).
      #
      #   @param action [Privy::Models::AutomationActionConfig] Action configuration for swap operations.
      #
      #   @param trigger [Privy::Models::AutomationTriggerConfig] Trigger configuration for deposit events.
    end
  end
end
