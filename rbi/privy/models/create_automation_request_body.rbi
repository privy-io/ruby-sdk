# typed: strong

module Privy
  module Models
    class CreateAutomationRequestBody < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::CreateAutomationRequestBody, Privy::Internal::AnyHash)
        end

      # Full configuration for a wallet automation (trigger + action) accepting
      # human-readable aliases.
      sig { returns(Privy::AutomationConfigInput) }
      attr_reader :config

      sig { params(config: Privy::AutomationConfigInput::OrHash).void }
      attr_writer :config

      sig { returns(T.nilable(String)) }
      attr_accessor :owner_id

      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      # Request body for creating a wallet automation.
      sig do
        params(
          config: Privy::AutomationConfigInput::OrHash,
          owner_id: T.nilable(String),
          name: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Full configuration for a wallet automation (trigger + action) accepting
        # human-readable aliases.
        config:,
        owner_id:,
        name: nil
      )
      end

      sig do
        override.returns(
          {
            config: Privy::AutomationConfigInput,
            owner_id: T.nilable(String),
            name: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
