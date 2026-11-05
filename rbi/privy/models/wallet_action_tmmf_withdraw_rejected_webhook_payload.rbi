# typed: strong

module Privy
  module Models
    class WalletActionTmmfWithdrawRejectedWebhookPayload < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::WalletActionTmmfWithdrawRejectedWebhookPayload,
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

      # A description of why a wallet action (or a step within a wallet action) failed.
      sig { returns(Privy::Wallets::FailureReason) }
      attr_reader :failure_reason

      sig { params(failure_reason: Privy::Wallets::FailureReason::OrHash).void }
      attr_writer :failure_reason

      # ISO 8601 timestamp of when the wallet action was rejected.
      sig { returns(String) }
      attr_accessor :rejected_at

      # The status of the wallet action.
      sig do
        returns(
          Privy::WalletActionTmmfWithdrawRejectedWebhookPayload::Status::TaggedSymbol
        )
      end
      attr_accessor :status

      # The steps of the wallet action at the time of rejection; `gas_credits_charged`
      # on a step may still be `null` when this webhook fires, so fetch the wallet
      # action directly for up-to-date gas data.
      sig { returns(T::Array[Privy::Wallets::WalletActionStep::Variants]) }
      attr_accessor :steps

      # The type of webhook event.
      sig do
        returns(
          Privy::WalletActionTmmfWithdrawRejectedWebhookPayload::Type::TaggedSymbol
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

      # Payload for the wallet_action.tmmf_withdraw.rejected webhook event.
      sig do
        params(
          action_type:
            T.any(Privy::Wallets::WalletActionType::OrSymbol, String),
          created_at: String,
          event_id: String,
          failure_reason: Privy::Wallets::FailureReason::OrHash,
          rejected_at: String,
          status:
            Privy::WalletActionTmmfWithdrawRejectedWebhookPayload::Status::OrSymbol,
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
            Privy::WalletActionTmmfWithdrawRejectedWebhookPayload::Type::OrSymbol,
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
        # A description of why a wallet action (or a step within a wallet action) failed.
        failure_reason:,
        # ISO 8601 timestamp of when the wallet action was rejected.
        rejected_at:,
        # The status of the wallet action.
        status:,
        # The steps of the wallet action at the time of rejection; `gas_credits_charged`
        # on a step may still be `null` when this webhook fires, so fetch the wallet
        # action directly for up-to-date gas data.
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
            failure_reason: Privy::Wallets::FailureReason,
            rejected_at: String,
            status:
              Privy::WalletActionTmmfWithdrawRejectedWebhookPayload::Status::TaggedSymbol,
            steps: T::Array[Privy::Wallets::WalletActionStep::Variants],
            type:
              Privy::WalletActionTmmfWithdrawRejectedWebhookPayload::Type::TaggedSymbol,
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
              Privy::WalletActionTmmfWithdrawRejectedWebhookPayload::Status
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        REJECTED =
          T.let(
            :rejected,
            Privy::WalletActionTmmfWithdrawRejectedWebhookPayload::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::WalletActionTmmfWithdrawRejectedWebhookPayload::Status::TaggedSymbol
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
              Privy::WalletActionTmmfWithdrawRejectedWebhookPayload::Type
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        WALLET_ACTION_TMMF_WITHDRAW_REJECTED =
          T.let(
            :"wallet_action.tmmf_withdraw.rejected",
            Privy::WalletActionTmmfWithdrawRejectedWebhookPayload::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::WalletActionTmmfWithdrawRejectedWebhookPayload::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
