# typed: strong

module Privy
  module Resources
    # Operations related to wallet automations
    class WalletAutomations
      # Re-checks a wallet (identified by wallet_id or deposit_address) for funds
      # matching its wallet automation configs and triggers an automation run if a match
      # is found. Use this to recover a deposit whose automation trigger was missed or
      # failed.
      sig do
        params(
          asset_address: String,
          caip2: String,
          chain: String,
          deposit_address: String,
          wallet_id: String,
          request_options: Privy::RequestOptions::OrHash
        ).returns(Privy::WalletAutomationReindexResponse)
      end
      def reindex(
        # Asset contract address to check; the native asset uses `native`.
        asset_address:,
        # EVM CAIP-2 chain identifier (e.g. "eip155:4217" for Tempo, "eip155:1" for
        # Ethereum).
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
