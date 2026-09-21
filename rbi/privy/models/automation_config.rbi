# typed: strong

module Privy
  module Models
    class AutomationConfig < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::AutomationConfig, Privy::Internal::AnyHash)
        end

      # Configuration for an automation action.
      sig { returns(Privy::AutomationActionConfig::Variants) }
      attr_accessor :action

      # Trigger configuration for deposit events.
      sig { returns(Privy::AutomationTriggerConfig) }
      attr_reader :trigger

      sig { params(trigger: Privy::AutomationTriggerConfig::OrHash).void }
      attr_writer :trigger

      # Full configuration for a wallet automation (trigger + action).
      sig do
        params(
          action:
            T.any(
              Privy::AutomationSwapActionConfig::OrHash,
              Privy::AutomationEarnDepositActionConfig::OrHash
            ),
          trigger: Privy::AutomationTriggerConfig::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Configuration for an automation action.
        action:,
        # Trigger configuration for deposit events.
        trigger:
      )
      end

      sig do
        override.returns(
          {
            action: Privy::AutomationActionConfig::Variants,
            trigger: Privy::AutomationTriggerConfig
          }
        )
      end
      def to_hash
      end
    end
  end
end
