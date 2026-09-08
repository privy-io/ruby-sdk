# typed: strong

module Privy
  module Models
    class WalletAutomationReindexAssetResult < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::WalletAutomationReindexAssetResult,
            Privy::Internal::AnyHash
          )
        end

      # Asset contract address; the native asset uses `native`.
      sig { returns(String) }
      attr_accessor :asset_address

      # EVM CAIP-2 chain identifier (e.g. "eip155:4217" for Tempo, "eip155:1" for
      # Ethereum).
      sig { returns(String) }
      attr_accessor :caip2

      # ID of the in-flight execution blocking a re-trigger. Populated only when
      # `status` is `skipped_existing_execution`; `null` otherwise.
      sig { returns(T.nilable(String)) }
      attr_accessor :existing_execution_id

      # On-chain balance in base units. Populated when `status` is `triggered` or
      # `skipped_zero_balance`; `null` otherwise. For example, 1 USDC is `1000000`.
      sig { returns(T.nilable(String)) }
      attr_accessor :raw_balance

      # Outcome of checking a single asset during a wallet automation reindex. One of
      # `triggered`, `skipped_zero_balance`, `skipped_no_match`,
      # `skipped_existing_execution`, or `failed`.
      sig { returns(String) }
      attr_accessor :status

      # The outcome of checking one asset on the requested chain during a reindex.
      sig do
        params(
          asset_address: String,
          caip2: String,
          existing_execution_id: T.nilable(String),
          raw_balance: T.nilable(String),
          status: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Asset contract address; the native asset uses `native`.
        asset_address:,
        # EVM CAIP-2 chain identifier (e.g. "eip155:4217" for Tempo, "eip155:1" for
        # Ethereum).
        caip2:,
        # ID of the in-flight execution blocking a re-trigger. Populated only when
        # `status` is `skipped_existing_execution`; `null` otherwise.
        existing_execution_id:,
        # On-chain balance in base units. Populated when `status` is `triggered` or
        # `skipped_zero_balance`; `null` otherwise. For example, 1 USDC is `1000000`.
        raw_balance:,
        # Outcome of checking a single asset during a wallet automation reindex. One of
        # `triggered`, `skipped_zero_balance`, `skipped_no_match`,
        # `skipped_existing_execution`, or `failed`.
        status:
      )
      end

      sig do
        override.returns(
          {
            asset_address: String,
            caip2: String,
            existing_execution_id: T.nilable(String),
            raw_balance: T.nilable(String),
            status: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
