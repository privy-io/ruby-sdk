# typed: strong

module Privy
  module Models
    class AutomationConfigInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::AutomationConfigInput, Privy::Internal::AnyHash)
        end

      # Action configuration for swap operations (input form with alias support).
      sig { returns(Privy::AutomationActionConfigInput) }
      attr_reader :action

      sig { params(action: Privy::AutomationActionConfigInput::OrHash).void }
      attr_writer :action

      # Trigger configuration for deposit events (input form with alias support).
      sig { returns(Privy::AutomationTriggerConfigInput) }
      attr_reader :trigger

      sig { params(trigger: Privy::AutomationTriggerConfigInput::OrHash).void }
      attr_writer :trigger

      # Full configuration for a wallet automation (trigger + action) accepting
      # human-readable aliases.
      sig do
        params(
          action: Privy::AutomationActionConfigInput::OrHash,
          trigger: Privy::AutomationTriggerConfigInput::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Action configuration for swap operations (input form with alias support).
        action:,
        # Trigger configuration for deposit events (input form with alias support).
        trigger:
      )
      end

      sig do
        override.returns(
          {
            action: Privy::AutomationActionConfigInput,
            trigger: Privy::AutomationTriggerConfigInput
          }
        )
      end
      def to_hash
      end
    end
  end
end
