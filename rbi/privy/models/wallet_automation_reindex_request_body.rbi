# typed: strong

module Privy
  module Models
    class WalletAutomationReindexRequestBody < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::WalletAutomationReindexRequestBody,
            Privy::Internal::AnyHash
          )
        end

      # Asset contract address to check; the native asset uses `native`.
      sig { returns(String) }
      attr_accessor :asset_address

      # EVM CAIP-2 chain identifier (e.g. "eip155:4217" for Tempo, "eip155:1" for
      # Ethereum).
      sig { returns(T.nilable(String)) }
      attr_reader :caip2

      sig { params(caip2: String).void }
      attr_writer :caip2

      # Human-readable chain name to check. Specify exactly one of `caip2` or `chain`.
      sig { returns(T.nilable(String)) }
      attr_reader :chain

      sig { params(chain: String).void }
      attr_writer :chain

      # On-chain deposit address of the wallet to reindex. Must match the resolved
      # wallet's address if `wallet_id` is also provided.
      sig { returns(T.nilable(String)) }
      attr_reader :deposit_address

      sig { params(deposit_address: String).void }
      attr_writer :deposit_address

      # Privy wallet ID to reindex. Takes precedence over `deposit_address` when both
      # are supplied.
      sig { returns(T.nilable(String)) }
      attr_reader :wallet_id

      sig { params(wallet_id: String).void }
      attr_writer :wallet_id

      # Request body for re-checking a wallet against its wallet automations. Identify
      # the wallet by wallet_id or deposit_address (at least one is required). If both
      # are provided, wallet_id takes precedence and deposit_address must match that
      # wallet's address. Specify exactly one of caip2 or chain, and the asset_address
      # to check. Useful for recovering a deposit that was missed or failed to trigger
      # its automation.
      sig do
        params(
          asset_address: String,
          caip2: String,
          chain: String,
          deposit_address: String,
          wallet_id: String
        ).returns(T.attached_class)
      end
      def self.new(
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
        wallet_id: nil
      )
      end

      sig do
        override.returns(
          {
            asset_address: String,
            caip2: String,
            chain: String,
            deposit_address: String,
            wallet_id: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
