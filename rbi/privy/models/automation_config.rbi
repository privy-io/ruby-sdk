# typed: strong

module Privy
  module Models
    class AutomationConfig < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::AutomationConfig, Privy::Internal::AnyHash)
        end

      # Action configuration for swap operations.
      sig { returns(Privy::AutomationActionConfig) }
      attr_reader :action

      sig { params(action: Privy::AutomationActionConfig::OrHash).void }
      attr_writer :action

      # Trigger configuration for deposit events.
      sig { returns(Privy::AutomationTriggerConfig) }
      attr_reader :trigger

      sig { params(trigger: Privy::AutomationTriggerConfig::OrHash).void }
      attr_writer :trigger

      # Full configuration for a wallet automation (trigger + action).
      sig do
        params(
          action: Privy::AutomationActionConfig::OrHash,
          trigger: Privy::AutomationTriggerConfig::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Action configuration for swap operations.
        action:,
        # Trigger configuration for deposit events.
        trigger:
      )
      end

      sig do
        override.returns(
          {
            action: Privy::AutomationActionConfig,
            trigger: Privy::AutomationTriggerConfig
          }
        )
      end
      def to_hash
      end
    end
  end
end
