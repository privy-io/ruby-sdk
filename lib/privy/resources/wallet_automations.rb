# frozen_string_literal: true

module Privy
  module Resources
    # Operations related to wallet automations
    class WalletAutomations
      # Some parameter documentations has been truncated, see
      # {Privy::Models::WalletAutomationReindexParams} for more details.
      #
      # Re-checks a wallet (identified by wallet_id or deposit_address) for funds
      # matching its wallet automation configs and triggers an automation run if a match
      # is found. Use this to recover a deposit whose automation trigger was missed or
      # failed.
      #
      # @overload reindex(asset_address:, caip2: nil, chain: nil, deposit_address: nil, wallet_id: nil, request_options: {})
      #
      # @param asset_address [String] Asset contract address to check; the native asset uses `native`.
      #
      # @param caip2 [String] EVM CAIP-2 chain identifier (e.g. "eip155:4217" for Tempo, "eip155:1" for Ethere
      #
      # @param chain [String] Human-readable chain name to check. Specify exactly one of `caip2` or `chain`.
      #
      # @param deposit_address [String] On-chain deposit address of the wallet to reindex. Must match the resolved walle
      #
      # @param wallet_id [String] Privy wallet ID to reindex. Takes precedence over `deposit_address` when both ar
      #
      # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Privy::Models::WalletAutomationReindexResponse]
      #
      # @see Privy::Models::WalletAutomationReindexParams
      def reindex(params)
        parsed, options = Privy::WalletAutomationReindexParams.dump_request(params)
        @client.request(
          method: :post,
          path: "v1/wallet_automations/reindex",
          body: parsed,
          model: Privy::WalletAutomationReindexResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Privy::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
