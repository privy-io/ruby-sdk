# typed: strong

module Privy
  module Models
    class WalletActionEarnFeeCollectRejectedWebhookPayload < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::WalletActionEarnFeeCollectRejectedWebhookPayload,
            Privy::Internal::AnyHash
          )
        end

      # Type of wallet action
      sig { returns(Privy::Wallets::WalletActionType::TaggedSymbol) }
      attr_accessor :action_type

      # Underlying asset token address.
      sig { returns(String) }
      attr_accessor :asset_address

      # CAIP-2 chain identifier.
      sig { returns(String) }
      attr_accessor :caip2

      # ISO 8601 timestamp of when the wallet action was created.
      sig { returns(String) }
      attr_accessor :created_at

      # A description of why a wallet action (or a step within a wallet action) failed.
      sig { returns(Privy::Wallets::FailureReason) }
      attr_reader :failure_reason

      sig { params(failure_reason: Privy::Wallets::FailureReason::OrHash).void }
      attr_writer :failure_reason

      # Base-unit amount of fees collected (e.g. "1500000").
      sig { returns(String) }
      attr_accessor :raw_amount

      # ISO 8601 timestamp of when the wallet action was rejected.
      sig { returns(String) }
      attr_accessor :rejected_at

      # The status of the wallet action.
      sig do
        returns(
          Privy::WalletActionEarnFeeCollectRejectedWebhookPayload::Status::TaggedSymbol
        )
      end
      attr_accessor :status

      # The steps of the wallet action at the time of rejection.
      sig { returns(T::Array[Privy::Wallets::WalletActionStep::Variants]) }
      attr_accessor :steps

      # The type of webhook event.
      sig do
        returns(
          Privy::WalletActionEarnFeeCollectRejectedWebhookPayload::Type::TaggedSymbol
        )
      end
      attr_accessor :type

      # ERC-4626 vault contract address.
      sig { returns(String) }
      attr_accessor :vault_address

      # The vault ID.
      sig { returns(String) }
      attr_accessor :vault_id

      # The ID of the wallet action.
      sig { returns(String) }
      attr_accessor :wallet_action_id

      # The ID of the wallet involved in the action.
      sig { returns(String) }
      attr_accessor :wallet_id

      # Human-readable decimal amount of fees collected (e.g. "1.5"). Only present when
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

      # Payload for the wallet_action.earn_fee_collect.rejected webhook event.
      sig do
        params(
          action_type: Privy::Wallets::WalletActionType::OrSymbol,
          asset_address: String,
          caip2: String,
          created_at: String,
          failure_reason: Privy::Wallets::FailureReason::OrHash,
          raw_amount: String,
          rejected_at: String,
          status:
            Privy::WalletActionEarnFeeCollectRejectedWebhookPayload::Status::OrSymbol,
          steps:
            T::Array[
              T.any(
                Privy::Wallets::EvmTransactionWalletActionStep::OrHash,
                Privy::Wallets::EvmUserOperationWalletActionStep::OrHash,
                Privy::Wallets::SvmTransactionWalletActionStep::OrHash,
                Privy::Wallets::TvmTransactionWalletActionStep::OrHash,
                Privy::Wallets::ExternalTransactionWalletActionStep::OrHash,
                Privy::Wallets::CustodianTransactionWalletActionStep::OrHash
              )
            ],
          type:
            Privy::WalletActionEarnFeeCollectRejectedWebhookPayload::Type::OrSymbol,
          vault_address: String,
          vault_id: String,
          wallet_action_id: String,
          wallet_id: String,
          amount: String,
          asset: String,
          decimals: Integer
        ).returns(T.attached_class)
      end
      def self.new(
        # Type of wallet action
        action_type:,
        # Underlying asset token address.
        asset_address:,
        # CAIP-2 chain identifier.
        caip2:,
        # ISO 8601 timestamp of when the wallet action was created.
        created_at:,
        # A description of why a wallet action (or a step within a wallet action) failed.
        failure_reason:,
        # Base-unit amount of fees collected (e.g. "1500000").
        raw_amount:,
        # ISO 8601 timestamp of when the wallet action was rejected.
        rejected_at:,
        # The status of the wallet action.
        status:,
        # The steps of the wallet action at the time of rejection.
        steps:,
        # The type of webhook event.
        type:,
        # ERC-4626 vault contract address.
        vault_address:,
        # The vault ID.
        vault_id:,
        # The ID of the wallet action.
        wallet_action_id:,
        # The ID of the wallet involved in the action.
        wallet_id:,
        # Human-readable decimal amount of fees collected (e.g. "1.5"). Only present when
        # the token is known in the asset registry.
        amount: nil,
        # Asset identifier (e.g. "usdc", "eth"). Only present when the token is known in
        # the asset registry.
        asset: nil,
        # Number of decimals for the underlying asset (e.g. 6 for USDC, 18 for ETH). Only
        # present when the token is known in the asset registry.
        decimals: nil
      )
      end

      sig do
        override.returns(
          {
            action_type: Privy::Wallets::WalletActionType::TaggedSymbol,
            asset_address: String,
            caip2: String,
            created_at: String,
            failure_reason: Privy::Wallets::FailureReason,
            raw_amount: String,
            rejected_at: String,
            status:
              Privy::WalletActionEarnFeeCollectRejectedWebhookPayload::Status::TaggedSymbol,
            steps: T::Array[Privy::Wallets::WalletActionStep::Variants],
            type:
              Privy::WalletActionEarnFeeCollectRejectedWebhookPayload::Type::TaggedSymbol,
            vault_address: String,
            vault_id: String,
            wallet_action_id: String,
            wallet_id: String,
            amount: String,
            asset: String,
            decimals: Integer
          }
        )
      end
      def to_hash
      end

      # The status of the wallet action.
      module Status
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Privy::WalletActionEarnFeeCollectRejectedWebhookPayload::Status
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        REJECTED =
          T.let(
            :rejected,
            Privy::WalletActionEarnFeeCollectRejectedWebhookPayload::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::WalletActionEarnFeeCollectRejectedWebhookPayload::Status::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # The type of webhook event.
      module Type
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Privy::WalletActionEarnFeeCollectRejectedWebhookPayload::Type
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        WALLET_ACTION_EARN_FEE_COLLECT_REJECTED =
          T.let(
            :"wallet_action.earn_fee_collect.rejected",
            Privy::WalletActionEarnFeeCollectRejectedWebhookPayload::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::WalletActionEarnFeeCollectRejectedWebhookPayload::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
