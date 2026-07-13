# typed: strong

module Privy
  module Models
    # Union of all webhook payload schemas.
    module WebhookPayload
      extend Privy::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Privy::UserCreatedWebhookPayload,
            Privy::UserAuthenticatedWebhookPayload,
            Privy::UserLinkedAccountWebhookPayload,
            Privy::UserUnlinkedAccountWebhookPayload,
            Privy::UserUpdatedAccountWebhookPayload,
            Privy::UserTransferredAccountWebhookPayload,
            Privy::UserWalletCreatedWebhookPayload,
            Privy::TransactionBroadcastedWebhookPayload,
            Privy::TransactionConfirmedWebhookPayload,
            Privy::TransactionExecutionRevertedWebhookPayload,
            Privy::TransactionStillPendingWebhookPayload,
            Privy::TransactionFailedWebhookPayload,
            Privy::TransactionReplacedWebhookPayload,
            Privy::TransactionProviderErrorWebhookPayload,
            Privy::FundsDepositedWebhookPayload,
            Privy::FundsWithdrawnWebhookPayload,
            Privy::PrivateKeyExportWebhookPayload,
            Privy::SeedPhraseExportWebhookPayload,
            Privy::WalletRecoverySetupWebhookPayload,
            Privy::WalletRecoveredWebhookPayload,
            Privy::WalletArchivedWebhookPayload,
            Privy::WalletRestoredWebhookPayload,
            Privy::MfaEnabledWebhookPayload,
            Privy::MfaDisabledWebhookPayload,
            Privy::YieldDepositConfirmedWebhookPayload,
            Privy::YieldWithdrawConfirmedWebhookPayload,
            Privy::YieldClaimConfirmedWebhookPayload,
            Privy::UserOperationCompletedWebhookPayload,
            Privy::IntentCreatedWebhookPayload,
            Privy::IntentAuthorizedWebhookPayload,
            Privy::IntentRejectedWebhookPayload,
            Privy::IntentExecutedWebhookPayload,
            Privy::IntentFailedWebhookPayload,
            Privy::WalletActionSwapCreatedWebhookPayload,
            Privy::WalletActionSwapSucceededWebhookPayload,
            Privy::WalletActionSwapRejectedWebhookPayload,
            Privy::WalletActionSwapFailedWebhookPayload,
            Privy::WalletActionTransferCreatedWebhookPayload,
            Privy::WalletActionTransferSucceededWebhookPayload,
            Privy::WalletActionTransferRejectedWebhookPayload,
            Privy::WalletActionTransferFailedWebhookPayload,
            Privy::WalletActionEarnDepositCreatedWebhookPayload,
            Privy::WalletActionEarnDepositSucceededWebhookPayload,
            Privy::WalletActionEarnDepositRejectedWebhookPayload,
            Privy::WalletActionEarnDepositFailedWebhookPayload,
            Privy::WalletActionEarnWithdrawCreatedWebhookPayload,
            Privy::WalletActionEarnWithdrawSucceededWebhookPayload,
            Privy::WalletActionEarnWithdrawRejectedWebhookPayload,
            Privy::WalletActionEarnWithdrawFailedWebhookPayload,
            Privy::WalletActionEarnIncentiveClaimCreatedWebhookPayload,
            Privy::WalletActionEarnIncentiveClaimSucceededWebhookPayload,
            Privy::WalletActionEarnIncentiveClaimRejectedWebhookPayload,
            Privy::WalletActionEarnIncentiveClaimFailedWebhookPayload,
            Privy::WalletActionEarnFeeCollectCreatedWebhookPayload,
            Privy::WalletActionEarnFeeCollectSucceededWebhookPayload,
            Privy::WalletActionEarnFeeCollectRejectedWebhookPayload,
            Privy::WalletActionEarnFeeCollectFailedWebhookPayload
          )
        end

      sig { override.returns(T::Array[Privy::WebhookPayload::Variants]) }
      def self.variants
      end
    end
  end
end
