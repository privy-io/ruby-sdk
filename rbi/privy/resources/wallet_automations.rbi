# typed: strong

module Privy
  module Resources
    # Operations related to wallet automations
    class WalletAutomations
      # Create a new wallet automation that triggers actions on deposit events.
      sig do
        params(
          config: Privy::AutomationConfigInput::OrHash,
          owner_id: T.nilable(String),
          name: String,
          request_options: Privy::RequestOptions::OrHash
        ).returns(Privy::WalletAutomationResponse)
      end
      def create(
        # Full configuration for a wallet automation (trigger + action) accepting
        # human-readable aliases.
        config:,
        owner_id:,
        name: nil,
        request_options: {}
      )
      end

      # Update a wallet automation by ID.
      sig do
        params(
          automation_id: String,
          config: Privy::AutomationConfigInput::OrHash,
          enabled: T::Boolean,
          name: T.nilable(String),
          owner_id: T.nilable(String),
          request_options: Privy::RequestOptions::OrHash
        ).returns(Privy::WalletAutomationResponse)
      end
      def update(
        # ID of the wallet automation.
        automation_id,
        # Full configuration for a wallet automation (trigger + action) accepting
        # human-readable aliases.
        config: nil,
        enabled: nil,
        name: nil,
        # A unique identifier for a key quorum.
        owner_id: nil,
        request_options: {}
      )
      end

      # List all wallet automations for your app, with optional filtering by wallet.
      sig do
        params(
          cursor: String,
          limit: Integer,
          wallet_id: String,
          request_options: Privy::RequestOptions::OrHash
        ).returns(Privy::Internal::Cursor[Privy::WalletAutomationResponse])
      end
      def list(cursor: nil, limit: nil, wallet_id: nil, request_options: {})
      end

      # Delete a wallet automation by ID.
      sig do
        params(
          automation_id: String,
          request_options: Privy::RequestOptions::OrHash
        ).returns(Privy::WalletAutomationSuccessResponse)
      end
      def delete(
        # ID of the wallet automation.
        automation_id,
        request_options: {}
      )
      end

      # Get a wallet automation by ID.
      sig do
        params(
          automation_id: String,
          request_options: Privy::RequestOptions::OrHash
        ).returns(Privy::WalletAutomationResponse)
      end
      def get(
        # ID of the wallet automation.
        automation_id,
        request_options: {}
      )
      end

      # List all wallet automation execution records, with optional filtering by wallet.
      sig do
        params(
          cursor: String,
          limit: Integer,
          wallet_id: String,
          request_options: Privy::RequestOptions::OrHash
        ).returns(
          Privy::Internal::Cursor[Privy::WalletAutomationExecutionResponse]
        )
      end
      def list_executions(
        cursor: nil,
        limit: nil,
        wallet_id: nil,
        request_options: {}
      )
      end

      # Re-checks a wallet (identified by wallet_id or deposit_address) for funds
      # matching its wallet automation configs and triggers an automation run if a match
      # is found. Use this to recover a deposit whose automation trigger was missed or
      # failed.
      sig do
        params(
          asset_address: String,
          caip2: T.any(String, Privy::TronCaip2::OrSymbol),
          chain: String,
          deposit_address: String,
          wallet_id: String,
          request_options: Privy::RequestOptions::OrHash
        ).returns(Privy::WalletAutomationReindexResponse)
      end
      def reindex(
        # Asset contract address to check; the native asset uses `native`.
        asset_address:,
        # An EVM, Solana, or Tron CAIP-2 chain identifier supported by wallet automation
        # reindex.
        caip2: nil,
        # Human-readable chain name to check. Specify exactly one of `caip2` or `chain`.
        chain: nil,
        # On-chain deposit address of the wallet to reindex. Must match the resolved
        # wallet's address if `wallet_id` is also provided.
        deposit_address: nil,
        # Privy wallet ID to reindex. Takes precedence over `deposit_address` when both
        # are supplied.
        wallet_id: nil,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Privy::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
