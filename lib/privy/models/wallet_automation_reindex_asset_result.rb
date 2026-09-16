# frozen_string_literal: true

module Privy
  module Models
    class WalletAutomationReindexAssetResult < Privy::Internal::Type::BaseModel
      # @!attribute asset_address
      #   Asset contract address; the native asset uses `native`.
      #
      #   @return [String]
      required :asset_address, String

      # @!attribute caip2
      #   An EVM, Solana, or Tron CAIP-2 chain identifier supported by wallet automation
      #   reindex.
      #
      #   @return [String, Symbol, Privy::Models::TronCaip2]
      required :caip2, union: -> { Privy::WalletAutomationReindexCaip2 }

      # @!attribute existing_execution_id
      #   ID of the in-flight execution blocking a re-trigger. Populated only when
      #   `status` is `skipped_existing_execution`; `null` otherwise.
      #
      #   @return [String, nil]
      required :existing_execution_id, String, nil?: true

      # @!attribute raw_balance
      #   On-chain balance in base units. Populated when `status` is `triggered` or
      #   `skipped_zero_balance`; `null` otherwise. For example, 1 OUSD is `1000000`.
      #
      #   @return [String, nil]
      required :raw_balance, String, nil?: true

      # @!attribute status
      #   Outcome of checking a single asset during a wallet automation reindex. One of
      #   `triggered`, `skipped_zero_balance`, `skipped_no_match`,
      #   `skipped_existing_execution`, or `failed`.
      #
      #   @return [String]
      required :status, String

      # @!method initialize(asset_address:, caip2:, existing_execution_id:, raw_balance:, status:)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::WalletAutomationReindexAssetResult} for more details.
      #
      #   The outcome of checking one asset on the requested chain during a reindex.
      #
      #   @param asset_address [String] Asset contract address; the native asset uses `native`.
      #
      #   @param caip2 [String, Symbol, Privy::Models::TronCaip2] An EVM, Solana, or Tron CAIP-2 chain identifier supported by wallet automation r
      #
      #   @param existing_execution_id [String, nil] ID of the in-flight execution blocking a re-trigger. Populated only when `status
      #
      #   @param raw_balance [String, nil] On-chain balance in base units. Populated when `status` is `triggered` or `skipp
      #
      #   @param status [String] Outcome of checking a single asset during a wallet automation reindex. One of `t
    end
  end
end
