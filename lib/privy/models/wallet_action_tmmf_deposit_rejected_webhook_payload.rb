# frozen_string_literal: true

module Privy
  module Models
    class WalletActionTmmfDepositRejectedWebhookPayload < Privy::Internal::Type::BaseModel
      # @!attribute action_type
      #   Type of wallet action
      #
      #   @return [Symbol, String, Privy::Models::Wallets::WalletActionType]
      required :action_type, union: -> { Privy::Wallets::WalletActionType }

      # @!attribute created_at
      #   ISO 8601 timestamp of when the wallet action was created.
      #
      #   @return [String]
      required :created_at, String

      # @!attribute event_id
      #   The ID of this event, stable across repeat deliveries so clients can deduplicate
      #   on it.
      #
      #   @return [String]
      required :event_id, String

      # @!attribute failure_reason
      #   A description of why a wallet action (or a step within a wallet action) failed.
      #
      #   @return [Privy::Models::Wallets::FailureReason]
      required :failure_reason, -> { Privy::Wallets::FailureReason }

      # @!attribute rejected_at
      #   ISO 8601 timestamp of when the wallet action was rejected.
      #
      #   @return [String]
      required :rejected_at, String

      # @!attribute status
      #   The status of the wallet action.
      #
      #   @return [Symbol, Privy::Models::WalletActionTmmfDepositRejectedWebhookPayload::Status]
      required :status, enum: -> { Privy::WalletActionTmmfDepositRejectedWebhookPayload::Status }

      # @!attribute steps
      #   The steps of the wallet action at the time of rejection; `gas_credits_charged`
      #   on a step may still be `null` when this webhook fires, so fetch the wallet
      #   action directly for up-to-date gas data.
      #
      #   @return [Array<Privy::Models::Wallets::EvmTransactionWalletActionStep, Privy::Models::Wallets::EvmUserOperationWalletActionStep, Privy::Models::Wallets::SvmTransactionWalletActionStep, Privy::Models::Wallets::TvmTransactionWalletActionStep, Privy::Models::Wallets::ExternalTransactionWalletActionStep, Privy::Models::Wallets::CustodianTransactionWalletActionStep, Privy::Models::Wallets::TempoZoneSettlementWalletActionStep, Privy::Models::Wallets::WisdomTreeSettlementWalletActionStep>]
      required :steps, -> { Privy::Internal::Type::ArrayOf[union: Privy::Wallets::WalletActionStep] }

      # @!attribute type
      #   The type of webhook event.
      #
      #   @return [Symbol, Privy::Models::WalletActionTmmfDepositRejectedWebhookPayload::Type]
      required :type, enum: -> { Privy::WalletActionTmmfDepositRejectedWebhookPayload::Type }

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

      # @!attribute reference_id
      #   Developer-provided reference ID, if one was included in the request.
      #
      #   @return [String, nil]
      optional :reference_id, String, nil?: true

      # @!method initialize(action_type:, created_at:, event_id:, failure_reason:, rejected_at:, status:, steps:, type:, wallet_action_id:, wallet_id:, reference_id: nil)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::WalletActionTmmfDepositRejectedWebhookPayload} for more details.
      #
      #   Payload for the wallet_action.tmmf_deposit.rejected webhook event.
      #
      #   @param action_type [Symbol, String, Privy::Models::Wallets::WalletActionType] Type of wallet action
      #
      #   @param created_at [String] ISO 8601 timestamp of when the wallet action was created.
      #
      #   @param event_id [String] The ID of this event, stable across repeat deliveries so clients can deduplicate
      #
      #   @param failure_reason [Privy::Models::Wallets::FailureReason] A description of why a wallet action (or a step within a wallet action) failed.
      #
      #   @param rejected_at [String] ISO 8601 timestamp of when the wallet action was rejected.
      #
      #   @param status [Symbol, Privy::Models::WalletActionTmmfDepositRejectedWebhookPayload::Status] The status of the wallet action.
      #
      #   @param steps [Array<Privy::Models::Wallets::EvmTransactionWalletActionStep, Privy::Models::Wallets::EvmUserOperationWalletActionStep, Privy::Models::Wallets::SvmTransactionWalletActionStep, Privy::Models::Wallets::TvmTransactionWalletActionStep, Privy::Models::Wallets::ExternalTransactionWalletActionStep, Privy::Models::Wallets::CustodianTransactionWalletActionStep, Privy::Models::Wallets::TempoZoneSettlementWalletActionStep, Privy::Models::Wallets::WisdomTreeSettlementWalletActionStep>] The steps of the wallet action at the time of rejection; `gas_credits_charged` o
      #
      #   @param type [Symbol, Privy::Models::WalletActionTmmfDepositRejectedWebhookPayload::Type] The type of webhook event.
      #
      #   @param wallet_action_id [String] The ID of the wallet action.
      #
      #   @param wallet_id [String] The ID of the wallet involved in the action.
      #
      #   @param reference_id [String, nil] Developer-provided reference ID, if one was included in the request.

      # The status of the wallet action.
      #
      # @see Privy::Models::WalletActionTmmfDepositRejectedWebhookPayload#status
      module Status
        extend Privy::Internal::Type::Enum

        REJECTED = :rejected

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The type of webhook event.
      #
      # @see Privy::Models::WalletActionTmmfDepositRejectedWebhookPayload#type
      module Type
        extend Privy::Internal::Type::Enum

        WALLET_ACTION_TMMF_DEPOSIT_REJECTED = :"wallet_action.tmmf_deposit.rejected"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
