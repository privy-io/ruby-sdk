# typed: strong

module Privy
  module Models
    class WalletActionTmmfWithdrawFailedWebhookPayload < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::WalletActionTmmfWithdrawFailedWebhookPayload,
            Privy::Internal::AnyHash
          )
        end

      # Type of wallet action
      sig { returns(Privy::Wallets::WalletActionType::Variants) }
      attr_accessor :action_type

      # ISO 8601 timestamp of when the wallet action was created.
      sig { returns(String) }
      attr_accessor :created_at

      # The ID of this event, stable across repeat deliveries so clients can deduplicate
      # on it.
      sig { returns(String) }
      attr_accessor :event_id

      # ISO 8601 timestamp of when the wallet action failed.
      sig { returns(String) }
      attr_accessor :failed_at

      # A description of why a wallet action (or a step within a wallet action) failed.
      sig { returns(Privy::Wallets::FailureReason) }
      attr_reader :failure_reason

      sig { params(failure_reason: Privy::Wallets::FailureReason::OrHash).void }
      attr_writer :failure_reason

      # The status of the wallet action.
      sig do
        returns(
          Privy::WalletActionTmmfWithdrawFailedWebhookPayload::Status::TaggedSymbol
        )
      end
      attr_accessor :status

      # The steps of the wallet action, where completed steps have transaction hashes
      # and the failing step has a failure_reason; `gas_credits_charged` on a step may
      # still be `null` when this webhook fires, so fetch the wallet action directly for
      # up-to-date gas data.
      sig { returns(T::Array[Privy::Wallets::WalletActionStep::Variants]) }
      attr_accessor :steps

      # The type of webhook event.
      sig do
        returns(
          Privy::WalletActionTmmfWithdrawFailedWebhookPayload::Type::TaggedSymbol
        )
      end
      attr_accessor :type

      # The ID of the wallet action.
      sig { returns(String) }
      attr_accessor :wallet_action_id

      # The ID of the wallet involved in the action.
      sig { returns(String) }
      attr_accessor :wallet_id

      # Developer-provided reference ID, if one was included in the request.
      sig { returns(T.nilable(String)) }
      attr_accessor :reference_id

      # Payload for the wallet_action.tmmf_withdraw.failed webhook event.
      sig do
        params(
          action_type:
            T.any(Privy::Wallets::WalletActionType::OrSymbol, String),
          created_at: String,
          event_id: String,
          failed_at: String,
          failure_reason: Privy::Wallets::FailureReason::OrHash,
          status:
            Privy::WalletActionTmmfWithdrawFailedWebhookPayload::Status::OrSymbol,
          steps:
            T::Array[
              T.any(
                Privy::Wallets::EvmTransactionWalletActionStep::OrHash,
                Privy::Wallets::EvmUserOperationWalletActionStep::OrHash,
                Privy::Wallets::SvmTransactionWalletActionStep::OrHash,
                Privy::Wallets::TvmTransactionWalletActionStep::OrHash,
                Privy::Wallets::ExternalTransactionWalletActionStep::OrHash,
                Privy::Wallets::CustodianTransactionWalletActionStep::OrHash,
                Privy::Wallets::TempoZoneSettlementWalletActionStep::OrHash,
                Privy::Wallets::WisdomTreeSettlementWalletActionStep::OrHash
              )
            ],
          type:
            Privy::WalletActionTmmfWithdrawFailedWebhookPayload::Type::OrSymbol,
          wallet_action_id: String,
          wallet_id: String,
          reference_id: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # Type of wallet action
        action_type:,
        # ISO 8601 timestamp of when the wallet action was created.
        created_at:,
        # The ID of this event, stable across repeat deliveries so clients can deduplicate
        # on it.
        event_id:,
        # ISO 8601 timestamp of when the wallet action failed.
        failed_at:,
        # A description of why a wallet action (or a step within a wallet action) failed.
        failure_reason:,
        # The status of the wallet action.
        status:,
        # The steps of the wallet action, where completed steps have transaction hashes
        # and the failing step has a failure_reason; `gas_credits_charged` on a step may
        # still be `null` when this webhook fires, so fetch the wallet action directly for
        # up-to-date gas data.
        steps:,
        # The type of webhook event.
        type:,
        # The ID of the wallet action.
        wallet_action_id:,
        # The ID of the wallet involved in the action.
        wallet_id:,
        # Developer-provided reference ID, if one was included in the request.
        reference_id: nil
      )
      end

      sig do
        override.returns(
          {
            action_type: Privy::Wallets::WalletActionType::Variants,
            created_at: String,
            event_id: String,
            failed_at: String,
            failure_reason: Privy::Wallets::FailureReason,
            status:
              Privy::WalletActionTmmfWithdrawFailedWebhookPayload::Status::TaggedSymbol,
            steps: T::Array[Privy::Wallets::WalletActionStep::Variants],
            type:
              Privy::WalletActionTmmfWithdrawFailedWebhookPayload::Type::TaggedSymbol,
            wallet_action_id: String,
            wallet_id: String,
            reference_id: T.nilable(String)
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
              Privy::WalletActionTmmfWithdrawFailedWebhookPayload::Status
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        FAILED =
          T.let(
            :failed,
            Privy::WalletActionTmmfWithdrawFailedWebhookPayload::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::WalletActionTmmfWithdrawFailedWebhookPayload::Status::TaggedSymbol
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
              Privy::WalletActionTmmfWithdrawFailedWebhookPayload::Type
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        WALLET_ACTION_TMMF_WITHDRAW_FAILED =
          T.let(
            :"wallet_action.tmmf_withdraw.failed",
            Privy::WalletActionTmmfWithdrawFailedWebhookPayload::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::WalletActionTmmfWithdrawFailedWebhookPayload::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
