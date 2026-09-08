# frozen_string_literal: true

module Privy
  module Models
    class WalletAutomationReindexRequestBody < Privy::Internal::Type::BaseModel
      # @!attribute asset_address
      #   Asset contract address to check; the native asset uses `native`.
      #
      #   @return [String]
      required :asset_address, String

      # @!attribute caip2
      #   EVM CAIP-2 chain identifier (e.g. "eip155:4217" for Tempo, "eip155:1" for
      #   Ethereum).
      #
      #   @return [String, nil]
      optional :caip2, String

      # @!attribute chain
      #   Human-readable chain name to check. Specify exactly one of `caip2` or `chain`.
      #
      #   @return [String, nil]
      optional :chain, String

      # @!attribute deposit_address
      #   On-chain deposit address of the wallet to reindex. Must match the resolved
      #   wallet's address if `wallet_id` is also provided.
      #
      #   @return [String, nil]
      optional :deposit_address, String

      # @!attribute wallet_id
      #   Privy wallet ID to reindex. Takes precedence over `deposit_address` when both
      #   are supplied.
      #
      #   @return [String, nil]
      optional :wallet_id, String

      # @!method initialize(asset_address:, caip2: nil, chain: nil, deposit_address: nil, wallet_id: nil)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::WalletAutomationReindexRequestBody} for more details.
      #
      #   Request body for re-checking a wallet against its wallet automations. Identify
      #   the wallet by wallet_id or deposit_address (at least one is required). If both
      #   are provided, wallet_id takes precedence and deposit_address must match that
      #   wallet's address. Specify exactly one of caip2 or chain, and the asset_address
      #   to check. Useful for recovering a deposit that was missed or failed to trigger
      #   its automation.
      #
      #   @param asset_address [String] Asset contract address to check; the native asset uses `native`.
      #
      #   @param caip2 [String] EVM CAIP-2 chain identifier (e.g. "eip155:4217" for Tempo, "eip155:1" for Ethere
      #
      #   @param chain [String] Human-readable chain name to check. Specify exactly one of `caip2` or `chain`.
      #
      #   @param deposit_address [String] On-chain deposit address of the wallet to reindex. Must match the resolved walle
      #
      #   @param wallet_id [String] Privy wallet ID to reindex. Takes precedence over `deposit_address` when both ar
    end
  end
end
