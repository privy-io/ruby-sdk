# typed: strong

module Privy
  module Models
    class EarnDepositActionResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::EarnDepositActionResponse, Privy::Internal::AnyHash)
        end

      # The ID of the wallet action.
      sig { returns(String) }
      attr_accessor :id

      # Underlying asset token address.
      sig { returns(String) }
      attr_accessor :asset_address

      # CAIP-2 chain identifier.
      sig { returns(String) }
      attr_accessor :caip2

      # ISO 8601 timestamp of when the wallet action was created.
      sig { returns(Time) }
      attr_accessor :created_at

      # Base-unit amount of asset deposited (e.g. "1500000").
      sig { returns(String) }
      attr_accessor :raw_amount

      # Vault shares received in base units. Populated after on-chain confirmation.
      sig { returns(T.nilable(String)) }
      attr_accessor :share_amount

      # Status of a wallet action.
      sig { returns(Privy::WalletActionStatus::TaggedSymbol) }
      attr_accessor :status

      sig { returns(Privy::EarnDepositActionResponse::Type::TaggedSymbol) }
      attr_accessor :type

      # ERC-4626 vault contract address.
      sig { returns(String) }
      attr_accessor :vault_address

      # The vault ID.
      sig { returns(String) }
      attr_accessor :vault_id

      # The ID of the wallet involved in the action.
      sig { returns(String) }
      attr_accessor :wallet_id

      # Human-readable decimal amount of asset deposited (e.g. "1.5"). Only present when
      # the token is known in the asset registry.
      sig { returns(T.nilable(String)) }
      attr_reader :amount

      sig { params(amount: String).void }
      attr_writer :amount

      # Asset identifier (e.g. "usdc", "eth"). Only present when the token is known in
      # the asset registry.
      sig { returns(T.nilable(String)) }
      attr_reader :asset

      sig { params(asset: String).void }
      attr_writer :asset

      # Number of decimals for the underlying asset (e.g. 6 for USDC, 18 for ETH). Only
      # present when the token is known in the asset registry.
      sig { returns(T.nilable(Integer)) }
      attr_reader :decimals

      sig { params(decimals: Integer).void }
      attr_writer :decimals

      # A description of why a wallet action (or a step within a wallet action) failed.
      sig { returns(T.nilable(Privy::FailureReason)) }
      attr_reader :failure_reason

      sig { params(failure_reason: Privy::FailureReason::OrHash).void }
      attr_writer :failure_reason

      # The steps of the wallet action. Only returned if `?include=steps` is provided.
      sig { returns(T.nilable(T::Array[Privy::WalletActionStep::Variants])) }
      attr_reader :steps

      sig do
        params(
          steps:
            T::Array[
              T.any(
                Privy::EvmTransactionWalletActionStep::OrHash,
                Privy::EvmUserOperationWalletActionStep::OrHash,
                Privy::SvmTransactionWalletActionStep::OrHash,
                Privy::ExternalTransactionWalletActionStep::OrHash
              )
            ]
        ).void
      end
      attr_writer :steps

      # Response for an earn deposit action.
      sig do
        params(
          id: String,
          asset_address: String,
          caip2: String,
          created_at: Time,
          raw_amount: String,
          share_amount: T.nilable(String),
          status: Privy::WalletActionStatus::OrSymbol,
          type: Privy::EarnDepositActionResponse::Type::OrSymbol,
          vault_address: String,
          vault_id: String,
          wallet_id: String,
          amount: String,
          asset: String,
          decimals: Integer,
          failure_reason: Privy::FailureReason::OrHash,
          steps:
            T::Array[
              T.any(
                Privy::EvmTransactionWalletActionStep::OrHash,
                Privy::EvmUserOperationWalletActionStep::OrHash,
                Privy::SvmTransactionWalletActionStep::OrHash,
                Privy::ExternalTransactionWalletActionStep::OrHash
              )
            ]
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of the wallet action.
        id:,
        # Underlying asset token address.
        asset_address:,
        # CAIP-2 chain identifier.
        caip2:,
        # ISO 8601 timestamp of when the wallet action was created.
        created_at:,
        # Base-unit amount of asset deposited (e.g. "1500000").
        raw_amount:,
        # Vault shares received in base units. Populated after on-chain confirmation.
        share_amount:,
        # Status of a wallet action.
        status:,
        type:,
        # ERC-4626 vault contract address.
        vault_address:,
        # The vault ID.
        vault_id:,
        # The ID of the wallet involved in the action.
        wallet_id:,
        # Human-readable decimal amount of asset deposited (e.g. "1.5"). Only present when
        # the token is known in the asset registry.
        amount: nil,
        # Asset identifier (e.g. "usdc", "eth"). Only present when the token is known in
        # the asset registry.
        asset: nil,
        # Number of decimals for the underlying asset (e.g. 6 for USDC, 18 for ETH). Only
        # present when the token is known in the asset registry.
        decimals: nil,
        # A description of why a wallet action (or a step within a wallet action) failed.
        failure_reason: nil,
        # The steps of the wallet action. Only returned if `?include=steps` is provided.
        steps: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            asset_address: String,
            caip2: String,
            created_at: Time,
            raw_amount: String,
            share_amount: T.nilable(String),
            status: Privy::WalletActionStatus::TaggedSymbol,
            type: Privy::EarnDepositActionResponse::Type::TaggedSymbol,
            vault_address: String,
            vault_id: String,
            wallet_id: String,
            amount: String,
            asset: String,
            decimals: Integer,
            failure_reason: Privy::FailureReason,
            steps: T::Array[Privy::WalletActionStep::Variants]
          }
        )
      end
      def to_hash
      end

      module Type
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Privy::EarnDepositActionResponse::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        EARN_DEPOSIT =
          T.let(
            :earn_deposit,
            Privy::EarnDepositActionResponse::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Privy::EarnDepositActionResponse::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
