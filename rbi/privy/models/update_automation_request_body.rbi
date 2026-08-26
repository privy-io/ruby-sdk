# typed: strong

module Privy
  module Models
    class UpdateAutomationRequestBody < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::UpdateAutomationRequestBody, Privy::Internal::AnyHash)
        end

      # Full configuration for a wallet automation (trigger + action) accepting
      # human-readable aliases.
      sig { returns(T.nilable(Privy::AutomationConfigInput)) }
      attr_reader :config

      sig { params(config: Privy::AutomationConfigInput::OrHash).void }
      attr_writer :config

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :enabled

      sig { params(enabled: T::Boolean).void }
      attr_writer :enabled

      sig { returns(T.nilable(String)) }
      attr_accessor :name

      # Request body for updating a wallet automation.
      sig do
        params(
          config: Privy::AutomationConfigInput::OrHash,
          enabled: T::Boolean,
          name: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # Full configuration for a wallet automation (trigger + action) accepting
        # human-readable aliases.
        config: nil,
        enabled: nil,
        name: nil
      )
      end

      sig do
        override.returns(
          {
            config: Privy::AutomationConfigInput,
            enabled: T::Boolean,
            name: T.nilable(String)
          }
        )
      end
      def to_hash
      end
    end
  end
end
