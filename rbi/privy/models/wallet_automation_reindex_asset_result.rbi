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

      # An EVM, Solana, or Tron CAIP-2 chain identifier supported by wallet automation
      # reindex.
      sig { returns(Privy::WalletAutomationReindexCaip2::Variants) }
      attr_accessor :caip2

      # ID of the in-flight execution blocking a re-trigger. Populated only when
      # `status` is `skipped_existing_execution`; `null` otherwise.
      sig { returns(T.nilable(String)) }
      attr_accessor :existing_execution_id

      # On-chain balance in base units. Populated when `status` is `submitted` or
      # `skipped_zero_balance`; `null` otherwise. For example, 1 OUSD is `1000000`.
      sig { returns(T.nilable(String)) }
      attr_accessor :raw_balance

      # Outcome of checking a single asset during a wallet automation reindex. One of
      # `submitted`, `skipped_zero_balance`, `skipped_no_match`,
      # `skipped_existing_execution`, or `failed`. `submitted` confirms that an
      # execution was enqueued.
      sig { returns(String) }
      attr_accessor :status

      # The outcome of checking one asset on the requested chain during a reindex.
      sig do
        params(
          asset_address: String,
          caip2: T.any(String, Privy::TronCaip2::OrSymbol),
          existing_execution_id: T.nilable(String),
          raw_balance: T.nilable(String),
          status: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Asset contract address; the native asset uses `native`.
        asset_address:,
        # An EVM, Solana, or Tron CAIP-2 chain identifier supported by wallet automation
        # reindex.
        caip2:,
        # ID of the in-flight execution blocking a re-trigger. Populated only when
        # `status` is `skipped_existing_execution`; `null` otherwise.
        existing_execution_id:,
        # On-chain balance in base units. Populated when `status` is `submitted` or
        # `skipped_zero_balance`; `null` otherwise. For example, 1 OUSD is `1000000`.
        raw_balance:,
        # Outcome of checking a single asset during a wallet automation reindex. One of
        # `submitted`, `skipped_zero_balance`, `skipped_no_match`,
        # `skipped_existing_execution`, or `failed`. `submitted` confirms that an
        # execution was enqueued.
        status:
      )
      end

      sig do
        override.returns(
          {
            asset_address: String,
            caip2: Privy::WalletAutomationReindexCaip2::Variants,
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
