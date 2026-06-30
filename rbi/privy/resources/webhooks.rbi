# typed: strong

module Privy
  module Resources
    class Webhooks
      sig do
        params(payload: String).returns(
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
        )
      end
      def unsafe_unwrap(
        # The raw webhook payload as a string
        payload
      )
      end

      # @api private
      sig { params(client: Privy::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
