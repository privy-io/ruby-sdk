# typed: strong

module Privy
  module Models
    # Payload for the intent.authorized webhook event.
    module UnsafeUnwrapWebhookEvent
      extend Privy::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Privy::IntentAuthorizedWebhookPayload,
            Privy::IntentCreatedWebhookPayload,
            Privy::IntentExecutedWebhookPayload,
            Privy::IntentFailedWebhookPayload,
            Privy::IntentRejectedWebhookPayload,
            Privy::MfaDisabledWebhookPayload,
            Privy::MfaEnabledWebhookPayload,
            Privy::TransactionBroadcastedWebhookPayload,
            Privy::TransactionConfirmedWebhookPayload,
            Privy::TransactionExecutionRevertedWebhookPayload,
            Privy::TransactionFailedWebhookPayload,
            Privy::TransactionProviderErrorWebhookPayload,
            Privy::TransactionReplacedWebhookPayload,
            Privy::TransactionStillPendingWebhookPayload,
            Privy::UserAuthenticatedWebhookPayload,
            Privy::UserCreatedWebhookPayload,
            Privy::UserLinkedAccountWebhookPayload,
            Privy::UserTransferredAccountWebhookPayload,
            Privy::UserUnlinkedAccountWebhookPayload,
            Privy::UserUpdatedAccountWebhookPayload,
            Privy::UserWalletCreatedWebhookPayload,
            Privy::UserOperationCompletedWebhookPayload,
            Privy::WalletArchivedWebhookPayload,
            Privy::FundsDepositedWebhookPayload,
            Privy::FundsWithdrawnWebhookPayload,
            Privy::PrivateKeyExportWebhookPayload,
            Privy::WalletRecoveredWebhookPayload,
            Privy::WalletRecoverySetupWebhookPayload,
            Privy::WalletRestoredWebhookPayload,
            Privy::WalletActionEarnDepositCreatedWebhookPayload,
            Privy::WalletActionEarnDepositFailedWebhookPayload,
            Privy::WalletActionEarnDepositRejectedWebhookPayload,
            Privy::WalletActionEarnDepositSucceededWebhookPayload,
            Privy::WalletActionEarnFeeCollectCreatedWebhookPayload,
            Privy::WalletActionEarnFeeCollectFailedWebhookPayload,
            Privy::WalletActionEarnFeeCollectRejectedWebhookPayload,
            Privy::WalletActionEarnFeeCollectSucceededWebhookPayload,
            Privy::WalletActionEarnIncentiveClaimCreatedWebhookPayload,
            Privy::WalletActionEarnIncentiveClaimFailedWebhookPayload,
            Privy::WalletActionEarnIncentiveClaimRejectedWebhookPayload,
            Privy::WalletActionEarnIncentiveClaimSucceededWebhookPayload,
            Privy::WalletActionEarnWithdrawCreatedWebhookPayload,
            Privy::WalletActionEarnWithdrawFailedWebhookPayload,
            Privy::WalletActionEarnWithdrawRejectedWebhookPayload,
            Privy::WalletActionEarnWithdrawSucceededWebhookPayload,
            Privy::WalletActionSwapCreatedWebhookPayload,
            Privy::WalletActionSwapFailedWebhookPayload,
            Privy::WalletActionSwapRejectedWebhookPayload,
            Privy::WalletActionSwapSucceededWebhookPayload,
            Privy::WalletActionTransferCreatedWebhookPayload,
            Privy::WalletActionTransferFailedWebhookPayload,
            Privy::WalletActionTransferRejectedWebhookPayload,
            Privy::WalletActionTransferSucceededWebhookPayload,
            Privy::YieldClaimConfirmedWebhookPayload,
            Privy::YieldDepositConfirmedWebhookPayload,
            Privy::YieldWithdrawConfirmedWebhookPayload
          )
        end

      sig do
        override.returns(T::Array[Privy::UnsafeUnwrapWebhookEvent::Variants])
      end
      def self.variants
      end
    end
  end
end
