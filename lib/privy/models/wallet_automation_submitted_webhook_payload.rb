# frozen_string_literal: true

module Privy
  module Models
    class WalletAutomationSubmittedWebhookPayload < Privy::Internal::Type::BaseModel
      # @!attribute action_id
      #   The ID of the wallet action created to fulfill the automation.
      #
      #   @return [String]
      required :action_id, String

      # @!attribute automation_id
      #   The ID of the automation that fired.
      #
      #   @return [String]
      required :automation_id, String

      # @!attribute created_at
      #   ISO 8601 timestamp of when the automation was submitted.
      #
      #   @return [String]
      required :created_at, String

      # @!attribute trigger_asset_address
      #   Contract address of the triggering deposit's asset, or 'native-token' for the
      #   native asset.
      #
      #   @return [String]
      required :trigger_asset_address, String

      # @!attribute trigger_caip2
      #   CAIP-2 chain identifier of the triggering deposit (e.g., 'eip155:8453').
      #
      #   @return [String]
      required :trigger_caip2, String

      # @!attribute trigger_id
      #   The ID of the automation execution that fired.
      #
      #   @return [String]
      required :trigger_id, String

      # @!attribute type
      #   The type of webhook event.
      #
      #   @return [Symbol, Privy::Models::WalletAutomationSubmittedWebhookPayload::Type]
      required :type, enum: -> { Privy::WalletAutomationSubmittedWebhookPayload::Type }

      # @!attribute wallet_id
      #   The ID of the wallet the automation fired for.
      #
      #   @return [String]
      required :wallet_id, String

      # @!method initialize(action_id:, automation_id:, created_at:, trigger_asset_address:, trigger_caip2:, trigger_id:, type:, wallet_id:)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::WalletAutomationSubmittedWebhookPayload} for more details.
      #
      #   Payload for the wallet_automation.submitted webhook event.
      #
      #   @param action_id [String] The ID of the wallet action created to fulfill the automation.
      #
      #   @param automation_id [String] The ID of the automation that fired.
      #
      #   @param created_at [String] ISO 8601 timestamp of when the automation was submitted.
      #
      #   @param trigger_asset_address [String] Contract address of the triggering deposit's asset, or 'native-token' for the na
      #
      #   @param trigger_caip2 [String] CAIP-2 chain identifier of the triggering deposit (e.g., 'eip155:8453').
      #
      #   @param trigger_id [String] The ID of the automation execution that fired.
      #
      #   @param type [Symbol, Privy::Models::WalletAutomationSubmittedWebhookPayload::Type] The type of webhook event.
      #
      #   @param wallet_id [String] The ID of the wallet the automation fired for.

      # The type of webhook event.
      #
      # @see Privy::Models::WalletAutomationSubmittedWebhookPayload#type
      module Type
        extend Privy::Internal::Type::Enum

        WALLET_AUTOMATION_SUBMITTED = :"wallet_automation.submitted"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
