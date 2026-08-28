# typed: strong

module Privy
  module Models
    class AutomationConfigInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::AutomationConfigInput, Privy::Internal::AnyHash)
        end

      # Configuration for an automation action (input form with alias support).
      sig do
        returns(
          T.any(
            Privy::AutomationSwapActionConfigInput,
            Privy::AutomationEarnDepositActionConfigInput
          )
        )
      end
      attr_accessor :action

      # Trigger configuration for deposit events (input form with alias support).
      sig { returns(Privy::AutomationTriggerConfigInput) }
      attr_reader :trigger

      sig { params(trigger: Privy::AutomationTriggerConfigInput::OrHash).void }
      attr_writer :trigger

      # Full configuration for a wallet automation (trigger + action) accepting
      # human-readable aliases.
      sig do
        params(
          action:
            T.any(
              Privy::AutomationSwapActionConfigInput::OrHash,
              Privy::AutomationEarnDepositActionConfigInput::OrHash
            ),
          trigger: Privy::AutomationTriggerConfigInput::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Configuration for an automation action (input form with alias support).
        action:,
        # Trigger configuration for deposit events (input form with alias support).
        trigger:
      )
      end

      sig do
        override.returns(
          {
            action:
              T.any(
                Privy::AutomationSwapActionConfigInput,
                Privy::AutomationEarnDepositActionConfigInput
              ),
            trigger: Privy::AutomationTriggerConfigInput
          }
        )
      end
      def to_hash
      end
    end
  end
end
