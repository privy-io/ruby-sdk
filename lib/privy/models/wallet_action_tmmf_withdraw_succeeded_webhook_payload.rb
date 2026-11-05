# frozen_string_literal: true

module Privy
  module Models
    class WalletActionTmmfWithdrawSucceededWebhookPayload < Privy::Internal::Type::BaseModel
      # @!attribute action_type
      #   Type of wallet action
      #
      #   @return [Symbol, String, Privy::Models::Wallets::WalletActionType]
      required :action_type, union: -> { Privy::Wallets::WalletActionType }

      # @!attribute completed_at
      #   ISO 8601 timestamp of when the wallet action completed successfully.
      #
      #   @return [String]
      required :completed_at, String

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

      # @!attribute status
      #   The status of the wallet action.
      #
      #   @return [Symbol, Privy::Models::WalletActionTmmfWithdrawSucceededWebhookPayload::Status]
      required :status, enum: -> { Privy::WalletActionTmmfWithdrawSucceededWebhookPayload::Status }

      # @!attribute steps
      #   The steps of the wallet action, including transaction hashes;
      #   `gas_credits_charged` on a step may still be `null` when this webhook fires, so
      #   fetch the wallet action directly for up-to-date gas data.
      #
      #   @return [Array<Privy::Models::Wallets::EvmTransactionWalletActionStep, Privy::Models::Wallets::EvmUserOperationWalletActionStep, Privy::Models::Wallets::SvmTransactionWalletActionStep, Privy::Models::Wallets::TvmTransactionWalletActionStep, Privy::Models::Wallets::ExternalTransactionWalletActionStep, Privy::Models::Wallets::CustodianTransactionWalletActionStep, Privy::Models::Wallets::TempoZoneSettlementWalletActionStep, Privy::Models::Wallets::WisdomTreeSettlementWalletActionStep>]
      required :steps, -> { Privy::Internal::Type::ArrayOf[union: Privy::Wallets::WalletActionStep] }

      # @!attribute type
      #   The type of webhook event.
      #
      #   @return [Symbol, Privy::Models::WalletActionTmmfWithdrawSucceededWebhookPayload::Type]
      required :type, enum: -> { Privy::WalletActionTmmfWithdrawSucceededWebhookPayload::Type }

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

      # @!method initialize(action_type:, completed_at:, created_at:, event_id:, status:, steps:, type:, wallet_action_id:, wallet_id:, reference_id: nil)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::WalletActionTmmfWithdrawSucceededWebhookPayload} for more
      #   details.
      #
      #   Payload for the wallet_action.tmmf_withdraw.succeeded webhook event.
      #
      #   @param action_type [Symbol, String, Privy::Models::Wallets::WalletActionType] Type of wallet action
      #
      #   @param completed_at [String] ISO 8601 timestamp of when the wallet action completed successfully.
      #
      #   @param created_at [String] ISO 8601 timestamp of when the wallet action was created.
      #
      #   @param event_id [String] The ID of this event, stable across repeat deliveries so clients can deduplicate
      #
      #   @param status [Symbol, Privy::Models::WalletActionTmmfWithdrawSucceededWebhookPayload::Status] The status of the wallet action.
      #
      #   @param steps [Array<Privy::Models::Wallets::EvmTransactionWalletActionStep, Privy::Models::Wallets::EvmUserOperationWalletActionStep, Privy::Models::Wallets::SvmTransactionWalletActionStep, Privy::Models::Wallets::TvmTransactionWalletActionStep, Privy::Models::Wallets::ExternalTransactionWalletActionStep, Privy::Models::Wallets::CustodianTransactionWalletActionStep, Privy::Models::Wallets::TempoZoneSettlementWalletActionStep, Privy::Models::Wallets::WisdomTreeSettlementWalletActionStep>] The steps of the wallet action, including transaction hashes; `gas_credits_charg
      #
      #   @param type [Symbol, Privy::Models::WalletActionTmmfWithdrawSucceededWebhookPayload::Type] The type of webhook event.
      #
      #   @param wallet_action_id [String] The ID of the wallet action.
      #
      #   @param wallet_id [String] The ID of the wallet involved in the action.
      #
      #   @param reference_id [String, nil] Developer-provided reference ID, if one was included in the request.

      # The status of the wallet action.
      #
      # @see Privy::Models::WalletActionTmmfWithdrawSucceededWebhookPayload#status
      module Status
        extend Privy::Internal::Type::Enum

        SUCCEEDED = :succeeded

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The type of webhook event.
      #
      # @see Privy::Models::WalletActionTmmfWithdrawSucceededWebhookPayload#type
      module Type
        extend Privy::Internal::Type::Enum

        WALLET_ACTION_TMMF_WITHDRAW_SUCCEEDED = :"wallet_action.tmmf_withdraw.succeeded"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
