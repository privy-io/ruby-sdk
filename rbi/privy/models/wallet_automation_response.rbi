# typed: strong

module Privy
  module Models
    class WalletAutomationResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::WalletAutomationResponse, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :id

      sig { returns(String) }
      attr_accessor :app_id

      # Full configuration for a wallet automation (trigger + action).
      sig { returns(Privy::AutomationConfig) }
      attr_reader :config

      sig { params(config: Privy::AutomationConfig::OrHash).void }
      attr_writer :config

      sig { returns(String) }
      attr_accessor :created_at

      sig { returns(T.nilable(String)) }
      attr_accessor :name

      sig { returns(T.nilable(String)) }
      attr_accessor :owner_id

      # Automation lifecycle state: 'enabled' = running, 'disabled' = not running.
      sig { returns(Privy::WalletAutomationStatus::OrSymbol) }
      attr_accessor :status

      sig { returns(String) }
      attr_accessor :updated_at

      # A wallet automation.
      sig do
        params(
          id: String,
          app_id: String,
          config: Privy::AutomationConfig::OrHash,
          created_at: String,
          name: T.nilable(String),
          owner_id: T.nilable(String),
          status: Privy::WalletAutomationStatus::OrSymbol,
          updated_at: String
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        app_id:,
        # Full configuration for a wallet automation (trigger + action).
        config:,
        created_at:,
        name:,
        owner_id:,
        # Automation lifecycle state: 'enabled' = running, 'disabled' = not running.
        status:,
        updated_at:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            app_id: String,
            config: Privy::AutomationConfig,
            created_at: String,
            name: T.nilable(String),
            owner_id: T.nilable(String),
            status: Privy::WalletAutomationStatus::OrSymbol,
            updated_at: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
