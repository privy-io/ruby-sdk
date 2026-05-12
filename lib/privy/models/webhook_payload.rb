# frozen_string_literal: true

module Privy
  module Models
    # Union of all webhook payload schemas.
    module WebhookPayload
      extend Privy::Internal::Type::Union

      # Payload for the user.created webhook event.
      variant -> { Privy::UserCreatedWebhookPayload }

      # Payload for the user.authenticated webhook event.
      variant -> { Privy::UserAuthenticatedWebhookPayload }

      # Payload for the user.linked_account webhook event.
      variant -> { Privy::UserLinkedAccountWebhookPayload }

      # Payload for the user.unlinked_account webhook event.
      variant -> { Privy::UserUnlinkedAccountWebhookPayload }

      # Payload for the user.updated_account webhook event.
      variant -> { Privy::UserUpdatedAccountWebhookPayload }

      # Payload for the user.transferred_account webhook event.
      variant -> { Privy::UserTransferredAccountWebhookPayload }

      # Payload for the user.wallet_created webhook event.
      variant -> { Privy::UserWalletCreatedWebhookPayload }

      # Payload for the transaction.broadcasted webhook event.
      variant -> { Privy::TransactionBroadcastedWebhookPayload }

      # Payload for the transaction.confirmed webhook event.
      variant -> { Privy::TransactionConfirmedWebhookPayload }

      # Payload for the transaction.execution_reverted webhook event.
      variant -> { Privy::TransactionExecutionRevertedWebhookPayload }

      # Payload for the transaction.still_pending webhook event.
      variant -> { Privy::TransactionStillPendingWebhookPayload }

      # Payload for the transaction.failed webhook event.
      variant -> { Privy::TransactionFailedWebhookPayload }

      # Payload for the transaction.replaced webhook event.
      variant -> { Privy::TransactionReplacedWebhookPayload }

      # Payload for the transaction.provider_error webhook event.
      variant -> { Privy::TransactionProviderErrorWebhookPayload }

      # Payload for the wallet.funds_deposited webhook event.
      variant -> { Privy::FundsDepositedWebhookPayload }

      # Payload for the wallet.funds_withdrawn webhook event.
      variant -> { Privy::FundsWithdrawnWebhookPayload }

      # Payload for the wallet.private_key_export webhook event.
      variant -> { Privy::PrivateKeyExportWebhookPayload }

      # Payload for the wallet.seed_phrase_export webhook event.
      variant -> { Privy::SeedPhraseExportWebhookPayload }

      # Payload for the wallet.recovery_setup webhook event.
      variant -> { Privy::WalletRecoverySetupWebhookPayload }

      # Payload for the wallet.recovered webhook event.
      variant -> { Privy::WalletRecoveredWebhookPayload }

      # Payload for the mfa.enabled webhook event.
      variant -> { Privy::MfaEnabledWebhookPayload }

      # Payload for the mfa.disabled webhook event.
      variant -> { Privy::MfaDisabledWebhookPayload }

      # Payload for the yield.deposit.confirmed webhook event.
      variant -> { Privy::YieldDepositConfirmedWebhookPayload }

      # Payload for the yield.withdraw.confirmed webhook event.
      variant -> { Privy::YieldWithdrawConfirmedWebhookPayload }

      # Payload for the yield.claim.confirmed webhook event.
      variant -> { Privy::YieldClaimConfirmedWebhookPayload }

      # Payload for the user_operation.completed webhook event.
      variant -> { Privy::UserOperationCompletedWebhookPayload }

      # Payload for the intent.created webhook event.
      variant -> { Privy::IntentCreatedWebhookPayload }

      # Payload for the intent.authorized webhook event.
      variant -> { Privy::IntentAuthorizedWebhookPayload }

      # Payload for the intent.rejected webhook event.
      variant -> { Privy::IntentRejectedWebhookPayload }

      # Payload for the intent.executed webhook event.
      variant -> { Privy::IntentExecutedWebhookPayload }

      # Payload for the intent.failed webhook event.
      variant -> { Privy::IntentFailedWebhookPayload }

      # Payload for the wallet_action.swap.created webhook event.
      variant -> { Privy::WalletActionSwapCreatedWebhookPayload }

      # Payload for the wallet_action.swap.succeeded webhook event.
      variant -> { Privy::WalletActionSwapSucceededWebhookPayload }

      # Payload for the wallet_action.swap.rejected webhook event.
      variant -> { Privy::WalletActionSwapRejectedWebhookPayload }

      # Payload for the wallet_action.swap.failed webhook event.
      variant -> { Privy::WalletActionSwapFailedWebhookPayload }

      # Payload for the wallet_action.transfer.created webhook event.
      variant -> { Privy::WalletActionTransferCreatedWebhookPayload }

      # Payload for the wallet_action.transfer.succeeded webhook event.
      variant -> { Privy::WalletActionTransferSucceededWebhookPayload }

      # Payload for the wallet_action.transfer.rejected webhook event.
      variant -> { Privy::WalletActionTransferRejectedWebhookPayload }

      # Payload for the wallet_action.transfer.failed webhook event.
      variant -> { Privy::WalletActionTransferFailedWebhookPayload }

      # Payload for the wallet_action.earn_deposit.created webhook event.
      variant -> { Privy::WalletActionEarnDepositCreatedWebhookPayload }

      # Payload for the wallet_action.earn_deposit.succeeded webhook event.
      variant -> { Privy::WalletActionEarnDepositSucceededWebhookPayload }

      # Payload for the wallet_action.earn_deposit.rejected webhook event.
      variant -> { Privy::WalletActionEarnDepositRejectedWebhookPayload }

      # Payload for the wallet_action.earn_deposit.failed webhook event.
      variant -> { Privy::WalletActionEarnDepositFailedWebhookPayload }

      # Payload for the wallet_action.earn_withdraw.created webhook event.
      variant -> { Privy::WalletActionEarnWithdrawCreatedWebhookPayload }

      # Payload for the wallet_action.earn_withdraw.succeeded webhook event.
      variant -> { Privy::WalletActionEarnWithdrawSucceededWebhookPayload }

      # Payload for the wallet_action.earn_withdraw.rejected webhook event.
      variant -> { Privy::WalletActionEarnWithdrawRejectedWebhookPayload }

      # Payload for the wallet_action.earn_withdraw.failed webhook event.
      variant -> { Privy::WalletActionEarnWithdrawFailedWebhookPayload }

      # Payload for the wallet_action.earn_incentive_claim.created webhook event.
      variant -> { Privy::WalletActionEarnIncentiveClaimCreatedWebhookPayload }

      # Payload for the wallet_action.earn_incentive_claim.succeeded webhook event.
      variant -> { Privy::WalletActionEarnIncentiveClaimSucceededWebhookPayload }

      # Payload for the wallet_action.earn_incentive_claim.rejected webhook event.
      variant -> { Privy::WalletActionEarnIncentiveClaimRejectedWebhookPayload }

      # Payload for the wallet_action.earn_incentive_claim.failed webhook event.
      variant -> { Privy::WalletActionEarnIncentiveClaimFailedWebhookPayload }

      # @!method self.variants
      #   @return [Array(Privy::Models::UserCreatedWebhookPayload, Privy::Models::UserAuthenticatedWebhookPayload, Privy::Models::UserLinkedAccountWebhookPayload, Privy::Models::UserUnlinkedAccountWebhookPayload, Privy::Models::UserUpdatedAccountWebhookPayload, Privy::Models::UserTransferredAccountWebhookPayload, Privy::Models::UserWalletCreatedWebhookPayload, Privy::Models::TransactionBroadcastedWebhookPayload, Privy::Models::TransactionConfirmedWebhookPayload, Privy::Models::TransactionExecutionRevertedWebhookPayload, Privy::Models::TransactionStillPendingWebhookPayload, Privy::Models::TransactionFailedWebhookPayload, Privy::Models::TransactionReplacedWebhookPayload, Privy::Models::TransactionProviderErrorWebhookPayload, Privy::Models::FundsDepositedWebhookPayload, Privy::Models::FundsWithdrawnWebhookPayload, Privy::Models::PrivateKeyExportWebhookPayload, Privy::Models::SeedPhraseExportWebhookPayload, Privy::Models::WalletRecoverySetupWebhookPayload, Privy::Models::WalletRecoveredWebhookPayload, Privy::Models::MfaEnabledWebhookPayload, Privy::Models::MfaDisabledWebhookPayload, Privy::Models::YieldDepositConfirmedWebhookPayload, Privy::Models::YieldWithdrawConfirmedWebhookPayload, Privy::Models::YieldClaimConfirmedWebhookPayload, Privy::Models::UserOperationCompletedWebhookPayload, Privy::Models::IntentCreatedWebhookPayload, Privy::Models::IntentAuthorizedWebhookPayload, Privy::Models::IntentRejectedWebhookPayload, Privy::Models::IntentExecutedWebhookPayload, Privy::Models::IntentFailedWebhookPayload, Privy::Models::WalletActionSwapCreatedWebhookPayload, Privy::Models::WalletActionSwapSucceededWebhookPayload, Privy::Models::WalletActionSwapRejectedWebhookPayload, Privy::Models::WalletActionSwapFailedWebhookPayload, Privy::Models::WalletActionTransferCreatedWebhookPayload, Privy::Models::WalletActionTransferSucceededWebhookPayload, Privy::Models::WalletActionTransferRejectedWebhookPayload, Privy::Models::WalletActionTransferFailedWebhookPayload, Privy::Models::WalletActionEarnDepositCreatedWebhookPayload, Privy::Models::WalletActionEarnDepositSucceededWebhookPayload, Privy::Models::WalletActionEarnDepositRejectedWebhookPayload, Privy::Models::WalletActionEarnDepositFailedWebhookPayload, Privy::Models::WalletActionEarnWithdrawCreatedWebhookPayload, Privy::Models::WalletActionEarnWithdrawSucceededWebhookPayload, Privy::Models::WalletActionEarnWithdrawRejectedWebhookPayload, Privy::Models::WalletActionEarnWithdrawFailedWebhookPayload, Privy::Models::WalletActionEarnIncentiveClaimCreatedWebhookPayload, Privy::Models::WalletActionEarnIncentiveClaimSucceededWebhookPayload, Privy::Models::WalletActionEarnIncentiveClaimRejectedWebhookPayload, Privy::Models::WalletActionEarnIncentiveClaimFailedWebhookPayload)]
    end
  end
end
