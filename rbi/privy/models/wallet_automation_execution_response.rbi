# typed: strong

module Privy
  module Models
    class WalletAutomationExecutionResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::WalletAutomationExecutionResponse,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :id

      sig { returns(T.nilable(String)) }
      attr_accessor :automation_attachment_id

      sig { returns(T.nilable(String)) }
      attr_accessor :completed_at

      sig { returns(String) }
      attr_accessor :created_at

      sig { returns(T.nilable(String)) }
      attr_accessor :failed_at

      sig { returns(T.nilable(String)) }
      attr_accessor :failure_reason

      # Execution lifecycle status.
      sig { returns(Privy::WalletAutomationExecutionStatus::OrSymbol) }
      attr_accessor :status

      sig { returns(String) }
      attr_accessor :trigger_asset_address

      sig { returns(String) }
      attr_accessor :trigger_block_number

      sig { returns(String) }
      attr_accessor :trigger_caip2

      sig { returns(String) }
      attr_accessor :trigger_tx_hash

      sig { returns(T.nilable(String)) }
      attr_accessor :triggered_at

      sig { returns(String) }
      attr_accessor :updated_at

      sig { returns(T.nilable(String)) }
      attr_accessor :wallet_action_id

      sig { returns(String) }
      attr_accessor :wallet_id

      # A record of a single automation execution triggered by a deposit.
      sig do
        params(
          id: String,
          automation_attachment_id: T.nilable(String),
          completed_at: T.nilable(String),
          created_at: String,
          failed_at: T.nilable(String),
          failure_reason: T.nilable(String),
          status: Privy::WalletAutomationExecutionStatus::OrSymbol,
          trigger_asset_address: String,
          trigger_block_number: String,
          trigger_caip2: String,
          trigger_tx_hash: String,
          triggered_at: T.nilable(String),
          updated_at: String,
          wallet_action_id: T.nilable(String),
          wallet_id: String
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        automation_attachment_id:,
        completed_at:,
        created_at:,
        failed_at:,
        failure_reason:,
        # Execution lifecycle status.
        status:,
        trigger_asset_address:,
        trigger_block_number:,
        trigger_caip2:,
        trigger_tx_hash:,
        triggered_at:,
        updated_at:,
        wallet_action_id:,
        wallet_id:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            automation_attachment_id: T.nilable(String),
            completed_at: T.nilable(String),
            created_at: String,
            failed_at: T.nilable(String),
            failure_reason: T.nilable(String),
            status: Privy::WalletAutomationExecutionStatus::OrSymbol,
            trigger_asset_address: String,
            trigger_block_number: String,
            trigger_caip2: String,
            trigger_tx_hash: String,
            triggered_at: T.nilable(String),
            updated_at: String,
            wallet_action_id: T.nilable(String),
            wallet_id: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
