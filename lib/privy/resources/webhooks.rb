# frozen_string_literal: true

module Privy
  module Resources
    class Webhooks
      # @param payload [String] The raw webhook payload as a string
      #
      # @return [Privy::Models::IntentAuthorizedWebhookPayload, Privy::Models::IntentCreatedWebhookPayload, Privy::Models::IntentExecutedWebhookPayload, Privy::Models::IntentFailedWebhookPayload, Privy::Models::IntentRejectedWebhookPayload, Privy::Models::MfaDisabledWebhookPayload, Privy::Models::MfaEnabledWebhookPayload, Privy::Models::OrganizationKYBUpdatedWebhookEvent, Privy::Models::TransactionBroadcastedWebhookPayload, Privy::Models::TransactionConfirmedWebhookPayload, Privy::Models::TransactionExecutionRevertedWebhookPayload, Privy::Models::TransactionFailedWebhookPayload, Privy::Models::TransactionProviderErrorWebhookPayload, Privy::Models::TransactionReplacedWebhookPayload, Privy::Models::TransactionStillPendingWebhookPayload, Privy::Models::UsageCrossChainFeeRecordedWebhookPayload, Privy::Models::UsageGasSponsorshipRecordedWebhookPayload, Privy::Models::UserAuthenticatedWebhookPayload, Privy::Models::UserCreatedWebhookPayload, Privy::Models::UserDeletedWebhookPayload, Privy::Models::UserKYCUpdatedWebhookEvent, Privy::Models::UserLinkedAccountWebhookPayload, Privy::Models::UserTransferredAccountWebhookPayload, Privy::Models::UserUnlinkedAccountWebhookPayload, Privy::Models::UserUpdatedAccountWebhookPayload, Privy::Models::UserWalletCreatedWebhookPayload, Privy::Models::UserOperationCompletedWebhookPayload, Privy::Models::WalletArchivedWebhookPayload, Privy::Models::WalletDepositAccountDepositCompletedWebhookEvent, Privy::Models::WalletDepositAccountDepositFailedWebhookEvent, Privy::Models::WalletDepositAccountDepositStartedWebhookEvent, Privy::Models::FundsDepositedWebhookPayload, Privy::Models::FundsWithdrawnWebhookPayload, Privy::Models::PrivateKeyExportWebhookPayload, Privy::Models::WalletRecoveredWebhookPayload, Privy::Models::WalletRecoverySetupWebhookPayload, Privy::Models::WalletRestoredWebhookPayload, Privy::Models::WalletActionEarnDepositCreatedWebhookPayload, Privy::Models::WalletActionEarnDepositFailedWebhookPayload, Privy::Models::WalletActionEarnDepositRejectedWebhookPayload, Privy::Models::WalletActionEarnDepositSucceededWebhookPayload, Privy::Models::WalletActionEarnFeeCollectCreatedWebhookPayload, Privy::Models::WalletActionEarnFeeCollectFailedWebhookPayload, Privy::Models::WalletActionEarnFeeCollectRejectedWebhookPayload, Privy::Models::WalletActionEarnFeeCollectSucceededWebhookPayload, Privy::Models::WalletActionEarnIncentiveClaimCreatedWebhookPayload, Privy::Models::WalletActionEarnIncentiveClaimFailedWebhookPayload, Privy::Models::WalletActionEarnIncentiveClaimRejectedWebhookPayload, Privy::Models::WalletActionEarnIncentiveClaimSucceededWebhookPayload, Privy::Models::WalletActionEarnWithdrawCreatedWebhookPayload, Privy::Models::WalletActionEarnWithdrawFailedWebhookPayload, Privy::Models::WalletActionEarnWithdrawRejectedWebhookPayload, Privy::Models::WalletActionEarnWithdrawSucceededWebhookPayload, Privy::Models::WalletActionPayoutCreatedWebhookPayload, Privy::Models::WalletActionPayoutFailedWebhookPayload, Privy::Models::WalletActionPayoutRejectedWebhookPayload, Privy::Models::WalletActionPayoutSucceededWebhookPayload, Privy::Models::WalletActionSwapCreatedWebhookPayload, Privy::Models::WalletActionSwapFailedWebhookPayload, Privy::Models::WalletActionSwapRejectedWebhookPayload, Privy::Models::WalletActionSwapSucceededWebhookPayload, Privy::Models::WalletActionTransferCreatedWebhookPayload, Privy::Models::WalletActionTransferFailedWebhookPayload, Privy::Models::WalletActionTransferRejectedWebhookPayload, Privy::Models::WalletActionTransferSucceededWebhookPayload, Privy::Models::WalletAutomationSubmittedWebhookPayload, Privy::Models::YieldClaimConfirmedWebhookPayload, Privy::Models::YieldDepositConfirmedWebhookPayload, Privy::Models::YieldWithdrawConfirmedWebhookPayload]
      def unsafe_unwrap(payload)
        parsed = JSON.parse(payload, symbolize_names: true)
        Privy::Internal::Type::Converter.coerce(Privy::Models::UnsafeUnwrapWebhookEvent, parsed)
      end

      # @api private
      #
      # @param client [Privy::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
