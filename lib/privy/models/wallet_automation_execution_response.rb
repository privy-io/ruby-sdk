# frozen_string_literal: true

module Privy
  module Models
    class WalletAutomationExecutionResponse < Privy::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute automation_attachment_id
      #
      #   @return [String, nil]
      required :automation_attachment_id, String, nil?: true

      # @!attribute completed_at
      #
      #   @return [String, nil]
      required :completed_at, String, nil?: true

      # @!attribute created_at
      #
      #   @return [String]
      required :created_at, String

      # @!attribute failed_at
      #
      #   @return [String, nil]
      required :failed_at, String, nil?: true

      # @!attribute failure_reason
      #
      #   @return [String, nil]
      required :failure_reason, String, nil?: true

      # @!attribute status
      #   Execution lifecycle status.
      #
      #   @return [Symbol, Privy::Models::WalletAutomationExecutionStatus]
      required :status, enum: -> { Privy::WalletAutomationExecutionStatus }

      # @!attribute trigger_asset_address
      #
      #   @return [String]
      required :trigger_asset_address, String

      # @!attribute trigger_block_number
      #
      #   @return [String]
      required :trigger_block_number, String

      # @!attribute trigger_caip2
      #
      #   @return [String]
      required :trigger_caip2, String

      # @!attribute trigger_tx_hash
      #
      #   @return [String]
      required :trigger_tx_hash, String

      # @!attribute triggered_at
      #
      #   @return [String, nil]
      required :triggered_at, String, nil?: true

      # @!attribute updated_at
      #
      #   @return [String]
      required :updated_at, String

      # @!attribute wallet_action_id
      #
      #   @return [String, nil]
      required :wallet_action_id, String, nil?: true

      # @!attribute wallet_id
      #
      #   @return [String]
      required :wallet_id, String

      # @!method initialize(id:, automation_attachment_id:, completed_at:, created_at:, failed_at:, failure_reason:, status:, trigger_asset_address:, trigger_block_number:, trigger_caip2:, trigger_tx_hash:, triggered_at:, updated_at:, wallet_action_id:, wallet_id:)
      #   A record of a single automation execution triggered by a deposit.
      #
      #   @param id [String]
      #
      #   @param automation_attachment_id [String, nil]
      #
      #   @param completed_at [String, nil]
      #
      #   @param created_at [String]
      #
      #   @param failed_at [String, nil]
      #
      #   @param failure_reason [String, nil]
      #
      #   @param status [Symbol, Privy::Models::WalletAutomationExecutionStatus] Execution lifecycle status.
      #
      #   @param trigger_asset_address [String]
      #
      #   @param trigger_block_number [String]
      #
      #   @param trigger_caip2 [String]
      #
      #   @param trigger_tx_hash [String]
      #
      #   @param triggered_at [String, nil]
      #
      #   @param updated_at [String]
      #
      #   @param wallet_action_id [String, nil]
      #
      #   @param wallet_id [String]
    end
  end
end
