# frozen_string_literal: true

module Privy
  module Models
    class WalletActionTmmfWithdrawCreatedWebhookPayload < Privy::Internal::Type::BaseModel
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

      # @!attribute status
      #   The status of the wallet action.
      #
      #   @return [Symbol, Privy::Models::WalletActionTmmfWithdrawCreatedWebhookPayload::Status]
      required :status, enum: -> { Privy::WalletActionTmmfWithdrawCreatedWebhookPayload::Status }

      # @!attribute type
      #   The type of webhook event.
      #
      #   @return [Symbol, Privy::Models::WalletActionTmmfWithdrawCreatedWebhookPayload::Type]
      required :type, enum: -> { Privy::WalletActionTmmfWithdrawCreatedWebhookPayload::Type }

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

      # @!method initialize(action_type:, created_at:, event_id:, status:, type:, wallet_action_id:, wallet_id:, reference_id: nil)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::WalletActionTmmfWithdrawCreatedWebhookPayload} for more details.
      #
      #   Payload for the wallet_action.tmmf_withdraw.created webhook event.
      #
      #   @param action_type [Symbol, String, Privy::Models::Wallets::WalletActionType] Type of wallet action
      #
      #   @param created_at [String] ISO 8601 timestamp of when the wallet action was created.
      #
      #   @param event_id [String] The ID of this event, stable across repeat deliveries so clients can deduplicate
      #
      #   @param status [Symbol, Privy::Models::WalletActionTmmfWithdrawCreatedWebhookPayload::Status] The status of the wallet action.
      #
      #   @param type [Symbol, Privy::Models::WalletActionTmmfWithdrawCreatedWebhookPayload::Type] The type of webhook event.
      #
      #   @param wallet_action_id [String] The ID of the wallet action.
      #
      #   @param wallet_id [String] The ID of the wallet involved in the action.
      #
      #   @param reference_id [String, nil] Developer-provided reference ID, if one was included in the request.

      # The status of the wallet action.
      #
      # @see Privy::Models::WalletActionTmmfWithdrawCreatedWebhookPayload#status
      module Status
        extend Privy::Internal::Type::Enum

        PENDING = :pending

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The type of webhook event.
      #
      # @see Privy::Models::WalletActionTmmfWithdrawCreatedWebhookPayload#type
      module Type
        extend Privy::Internal::Type::Enum

        WALLET_ACTION_TMMF_WITHDRAW_CREATED = :"wallet_action.tmmf_withdraw.created"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
