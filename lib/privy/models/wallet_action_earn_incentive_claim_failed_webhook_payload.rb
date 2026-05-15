# frozen_string_literal: true

module Privy
  module Models
    class WalletActionEarnIncentiveClaimFailedWebhookPayload < Privy::Internal::Type::BaseModel
      # @!attribute action_type
      #   Type of wallet action
      #
      #   @return [Symbol, Privy::Models::WalletActionType]
      required :action_type, enum: -> { Privy::WalletActionType }

      # @!attribute chain
      #   EVM chain name (e.g. "base", "ethereum").
      #
      #   @return [String]
      required :chain, String

      # @!attribute failure_reason
      #   A description of why a wallet action (or a step within a wallet action) failed.
      #
      #   @return [Privy::Models::FailureReason]
      required :failure_reason, -> { Privy::FailureReason }

      # @!attribute rewards
      #   Claimed reward tokens. Populated after the preparation step fetches from Merkl.
      #
      #   @return [Array<Privy::Models::EarnIncetiveClaimRewardEntry>, nil]
      required :rewards,
               -> {
                 Privy::Internal::Type::ArrayOf[Privy::EarnIncetiveClaimRewardEntry]
               },
               nil?: true

      # @!attribute status
      #   The status of the wallet action.
      #
      #   @return [Symbol, Privy::Models::WalletActionEarnIncentiveClaimFailedWebhookPayload::Status]
      required :status, enum: -> { Privy::WalletActionEarnIncentiveClaimFailedWebhookPayload::Status }

      # @!attribute steps
      #   The steps of the wallet action. Completed steps will have transaction hashes;
      #   the failing step will have a failure_reason.
      #
      #   @return [Array<Privy::Models::EvmTransactionWalletActionStep, Privy::Models::EvmUserOperationWalletActionStep, Privy::Models::SvmTransactionWalletActionStep, Privy::Models::ExternalTransactionWalletActionStep>]
      required :steps, -> { Privy::Internal::Type::ArrayOf[union: Privy::WalletActionStep] }

      # @!attribute type
      #   The type of webhook event.
      #
      #   @return [Symbol, Privy::Models::WalletActionEarnIncentiveClaimFailedWebhookPayload::Type]
      required :type, enum: -> { Privy::WalletActionEarnIncentiveClaimFailedWebhookPayload::Type }

      # @!attribute wallet_action_id
      #   The ID of the wallet action.
      #
      #   @return [String]
      required :wallet_action_id, String

      # @!attribute wallet_id
      #   The ID of the wallet involved in the action.
      #
      #   @return [String]
      required :wallet_id, String

      # @!method initialize(action_type:, chain:, failure_reason:, rewards:, status:, steps:, type:, wallet_action_id:, wallet_id:)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::WalletActionEarnIncentiveClaimFailedWebhookPayload} for more
      #   details.
      #
      #   Payload for the wallet_action.earn_incentive_claim.failed webhook event.
      #
      #   @param action_type [Symbol, Privy::Models::WalletActionType] Type of wallet action
      #
      #   @param chain [String] EVM chain name (e.g. "base", "ethereum").
      #
      #   @param failure_reason [Privy::Models::FailureReason] A description of why a wallet action (or a step within a wallet action) failed.
      #
      #   @param rewards [Array<Privy::Models::EarnIncetiveClaimRewardEntry>, nil] Claimed reward tokens. Populated after the preparation step fetches from Merkl.
      #
      #   @param status [Symbol, Privy::Models::WalletActionEarnIncentiveClaimFailedWebhookPayload::Status] The status of the wallet action.
      #
      #   @param steps [Array<Privy::Models::EvmTransactionWalletActionStep, Privy::Models::EvmUserOperationWalletActionStep, Privy::Models::SvmTransactionWalletActionStep, Privy::Models::ExternalTransactionWalletActionStep>] The steps of the wallet action. Completed steps will have transaction hashes; th
      #
      #   @param type [Symbol, Privy::Models::WalletActionEarnIncentiveClaimFailedWebhookPayload::Type] The type of webhook event.
      #
      #   @param wallet_action_id [String] The ID of the wallet action.
      #
      #   @param wallet_id [String] The ID of the wallet involved in the action.

      # The status of the wallet action.
      #
      # @see Privy::Models::WalletActionEarnIncentiveClaimFailedWebhookPayload#status
      module Status
        extend Privy::Internal::Type::Enum

        FAILED = :failed

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The type of webhook event.
      #
      # @see Privy::Models::WalletActionEarnIncentiveClaimFailedWebhookPayload#type
      module Type
        extend Privy::Internal::Type::Enum

        WALLET_ACTION_EARN_INCENTIVE_CLAIM_FAILED = :"wallet_action.earn_incentive_claim.failed"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
