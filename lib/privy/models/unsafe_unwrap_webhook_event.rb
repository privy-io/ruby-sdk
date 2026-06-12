# frozen_string_literal: true

module Privy
  module Models
    # Payload for the intent.authorized webhook event.
    module UnsafeUnwrapWebhookEvent
      extend Privy::Internal::Type::Union

      discriminator :type

      # Payload for the intent.authorized webhook event.
      variant :"intent.authorized", -> { Privy::IntentAuthorizedWebhookPayload }

      # Payload for the intent.created webhook event.
      variant :"intent.created", -> { Privy::IntentCreatedWebhookPayload }

      # Payload for the intent.executed webhook event.
      variant :"intent.executed", -> { Privy::IntentExecutedWebhookPayload }

      # Payload for the intent.failed webhook event.
      variant :"intent.failed", -> { Privy::IntentFailedWebhookPayload }

      # Payload for the intent.rejected webhook event.
      variant :"intent.rejected", -> { Privy::IntentRejectedWebhookPayload }

      # Payload for the mfa.disabled webhook event.
      variant :"mfa.disabled", -> { Privy::MfaDisabledWebhookPayload }

      # Payload for the mfa.enabled webhook event.
      variant :"mfa.enabled", -> { Privy::MfaEnabledWebhookPayload }

      # Payload for the transaction.broadcasted webhook event.
      variant :"transaction.broadcasted", -> { Privy::TransactionBroadcastedWebhookPayload }

      # Payload for the transaction.confirmed webhook event.
      variant :"transaction.confirmed", -> { Privy::TransactionConfirmedWebhookPayload }

      # Payload for the transaction.execution_reverted webhook event.
      variant :"transaction.execution_reverted", -> { Privy::TransactionExecutionRevertedWebhookPayload }

      # Payload for the transaction.failed webhook event.
      variant :"transaction.failed", -> { Privy::TransactionFailedWebhookPayload }

      # Payload for the transaction.provider_error webhook event.
      variant :"transaction.provider_error", -> { Privy::TransactionProviderErrorWebhookPayload }

      # Payload for the transaction.replaced webhook event.
      variant :"transaction.replaced", -> { Privy::TransactionReplacedWebhookPayload }

      # Payload for the transaction.still_pending webhook event.
      variant :"transaction.still_pending", -> { Privy::TransactionStillPendingWebhookPayload }

      # Payload for the user.authenticated webhook event.
      variant :"user.authenticated", -> { Privy::UserAuthenticatedWebhookPayload }

      # Payload for the user.created webhook event.
      variant :"user.created", -> { Privy::UserCreatedWebhookPayload }

      # Payload for the user.linked_account webhook event.
      variant :"user.linked_account", -> { Privy::UserLinkedAccountWebhookPayload }

      # Payload for the user.transferred_account webhook event.
      variant :"user.transferred_account", -> { Privy::UserTransferredAccountWebhookPayload }

      # Payload for the user.unlinked_account webhook event.
      variant :"user.unlinked_account", -> { Privy::UserUnlinkedAccountWebhookPayload }

      # Payload for the user.updated_account webhook event.
      variant :"user.updated_account", -> { Privy::UserUpdatedAccountWebhookPayload }

      # Payload for the user.wallet_created webhook event.
      variant :"user.wallet_created", -> { Privy::UserWalletCreatedWebhookPayload }

      # Payload for the user_operation.completed webhook event.
      variant :"user_operation.completed", -> { Privy::UserOperationCompletedWebhookPayload }

      # Payload for the wallet.archived webhook event.
      variant :"wallet.archived", -> { Privy::WalletArchivedWebhookPayload }

      # Payload for the wallet.funds_deposited webhook event.
      variant :"wallet.funds_deposited", -> { Privy::FundsDepositedWebhookPayload }

      # Payload for the wallet.funds_withdrawn webhook event.
      variant :"wallet.funds_withdrawn", -> { Privy::FundsWithdrawnWebhookPayload }

      # Payload for the wallet.private_key_export webhook event.
      variant :"wallet.private_key_export", -> { Privy::PrivateKeyExportWebhookPayload }

      # Payload for the wallet.recovered webhook event.
      variant :"wallet.recovered", -> { Privy::WalletRecoveredWebhookPayload }

      # Payload for the wallet.recovery_setup webhook event.
      variant :"wallet.recovery_setup", -> { Privy::WalletRecoverySetupWebhookPayload }

      # Payload for the wallet_action.earn_deposit.created webhook event.
      variant :"wallet_action.earn_deposit.created", -> { Privy::WalletActionEarnDepositCreatedWebhookPayload }

      # Payload for the wallet_action.earn_deposit.failed webhook event.
      variant :"wallet_action.earn_deposit.failed", -> { Privy::WalletActionEarnDepositFailedWebhookPayload }

      # Payload for the wallet_action.earn_deposit.rejected webhook event.
      variant :"wallet_action.earn_deposit.rejected",
              -> { Privy::WalletActionEarnDepositRejectedWebhookPayload }

      # Payload for the wallet_action.earn_deposit.succeeded webhook event.
      variant :"wallet_action.earn_deposit.succeeded",
              -> { Privy::WalletActionEarnDepositSucceededWebhookPayload }

      # Payload for the wallet_action.earn_incentive_claim.created webhook event.
      variant :"wallet_action.earn_incentive_claim.created",
              -> { Privy::WalletActionEarnIncentiveClaimCreatedWebhookPayload }

      # Payload for the wallet_action.earn_incentive_claim.failed webhook event.
      variant :"wallet_action.earn_incentive_claim.failed",
              -> { Privy::WalletActionEarnIncentiveClaimFailedWebhookPayload }

      # Payload for the wallet_action.earn_incentive_claim.rejected webhook event.
      variant :"wallet_action.earn_incentive_claim.rejected",
              -> { Privy::WalletActionEarnIncentiveClaimRejectedWebhookPayload }

      # Payload for the wallet_action.earn_incentive_claim.succeeded webhook event.
      variant :"wallet_action.earn_incentive_claim.succeeded",
              -> { Privy::WalletActionEarnIncentiveClaimSucceededWebhookPayload }

      # Payload for the wallet_action.earn_withdraw.created webhook event.
      variant :"wallet_action.earn_withdraw.created",
              -> { Privy::WalletActionEarnWithdrawCreatedWebhookPayload }

      # Payload for the wallet_action.earn_withdraw.failed webhook event.
      variant :"wallet_action.earn_withdraw.failed", -> { Privy::WalletActionEarnWithdrawFailedWebhookPayload }

      # Payload for the wallet_action.earn_withdraw.rejected webhook event.
      variant :"wallet_action.earn_withdraw.rejected",
              -> { Privy::WalletActionEarnWithdrawRejectedWebhookPayload }

      # Payload for the wallet_action.earn_withdraw.succeeded webhook event.
      variant :"wallet_action.earn_withdraw.succeeded",
              -> { Privy::WalletActionEarnWithdrawSucceededWebhookPayload }

      # Payload for the wallet_action.swap.created webhook event.
      variant :"wallet_action.swap.created", -> { Privy::WalletActionSwapCreatedWebhookPayload }

      # Payload for the wallet_action.swap.failed webhook event.
      variant :"wallet_action.swap.failed", -> { Privy::WalletActionSwapFailedWebhookPayload }

      # Payload for the wallet_action.swap.rejected webhook event.
      variant :"wallet_action.swap.rejected", -> { Privy::WalletActionSwapRejectedWebhookPayload }

      # Payload for the wallet_action.swap.succeeded webhook event.
      variant :"wallet_action.swap.succeeded", -> { Privy::WalletActionSwapSucceededWebhookPayload }

      # Payload for the wallet_action.transfer.created webhook event.
      variant :"wallet_action.transfer.created", -> { Privy::WalletActionTransferCreatedWebhookPayload }

      # Payload for the wallet_action.transfer.failed webhook event.
      variant :"wallet_action.transfer.failed", -> { Privy::WalletActionTransferFailedWebhookPayload }

      # Payload for the wallet_action.transfer.rejected webhook event.
      variant :"wallet_action.transfer.rejected", -> { Privy::WalletActionTransferRejectedWebhookPayload }

      # Payload for the wallet_action.transfer.succeeded webhook event.
      variant :"wallet_action.transfer.succeeded", -> { Privy::WalletActionTransferSucceededWebhookPayload }

      # Payload for the yield.claim.confirmed webhook event.
      variant :"yield.claim.confirmed", -> { Privy::YieldClaimConfirmedWebhookPayload }

      # Payload for the yield.deposit.confirmed webhook event.
      variant :"yield.deposit.confirmed", -> { Privy::YieldDepositConfirmedWebhookPayload }

      # Payload for the yield.withdraw.confirmed webhook event.
      variant :"yield.withdraw.confirmed", -> { Privy::YieldWithdrawConfirmedWebhookPayload }

      # @!method self.variants
      #   @return [Array(Privy::Models::IntentAuthorizedWebhookPayload, Privy::Models::IntentCreatedWebhookPayload, Privy::Models::IntentExecutedWebhookPayload, Privy::Models::IntentFailedWebhookPayload, Privy::Models::IntentRejectedWebhookPayload, Privy::Models::MfaDisabledWebhookPayload, Privy::Models::MfaEnabledWebhookPayload, Privy::Models::TransactionBroadcastedWebhookPayload, Privy::Models::TransactionConfirmedWebhookPayload, Privy::Models::TransactionExecutionRevertedWebhookPayload, Privy::Models::TransactionFailedWebhookPayload, Privy::Models::TransactionProviderErrorWebhookPayload, Privy::Models::TransactionReplacedWebhookPayload, Privy::Models::TransactionStillPendingWebhookPayload, Privy::Models::UserAuthenticatedWebhookPayload, Privy::Models::UserCreatedWebhookPayload, Privy::Models::UserLinkedAccountWebhookPayload, Privy::Models::UserTransferredAccountWebhookPayload, Privy::Models::UserUnlinkedAccountWebhookPayload, Privy::Models::UserUpdatedAccountWebhookPayload, Privy::Models::UserWalletCreatedWebhookPayload, Privy::Models::UserOperationCompletedWebhookPayload, Privy::Models::WalletArchivedWebhookPayload, Privy::Models::FundsDepositedWebhookPayload, Privy::Models::FundsWithdrawnWebhookPayload, Privy::Models::PrivateKeyExportWebhookPayload, Privy::Models::WalletRecoveredWebhookPayload, Privy::Models::WalletRecoverySetupWebhookPayload, Privy::Models::WalletActionEarnDepositCreatedWebhookPayload, Privy::Models::WalletActionEarnDepositFailedWebhookPayload, Privy::Models::WalletActionEarnDepositRejectedWebhookPayload, Privy::Models::WalletActionEarnDepositSucceededWebhookPayload, Privy::Models::WalletActionEarnIncentiveClaimCreatedWebhookPayload, Privy::Models::WalletActionEarnIncentiveClaimFailedWebhookPayload, Privy::Models::WalletActionEarnIncentiveClaimRejectedWebhookPayload, Privy::Models::WalletActionEarnIncentiveClaimSucceededWebhookPayload, Privy::Models::WalletActionEarnWithdrawCreatedWebhookPayload, Privy::Models::WalletActionEarnWithdrawFailedWebhookPayload, Privy::Models::WalletActionEarnWithdrawRejectedWebhookPayload, Privy::Models::WalletActionEarnWithdrawSucceededWebhookPayload, Privy::Models::WalletActionSwapCreatedWebhookPayload, Privy::Models::WalletActionSwapFailedWebhookPayload, Privy::Models::WalletActionSwapRejectedWebhookPayload, Privy::Models::WalletActionSwapSucceededWebhookPayload, Privy::Models::WalletActionTransferCreatedWebhookPayload, Privy::Models::WalletActionTransferFailedWebhookPayload, Privy::Models::WalletActionTransferRejectedWebhookPayload, Privy::Models::WalletActionTransferSucceededWebhookPayload, Privy::Models::YieldClaimConfirmedWebhookPayload, Privy::Models::YieldDepositConfirmedWebhookPayload, Privy::Models::YieldWithdrawConfirmedWebhookPayload)]
    end
  end
end
