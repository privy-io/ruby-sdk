# frozen_string_literal: true

module Privy
  module Models
    class WalletAutomationAttachmentResponse < Privy::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute automation_id
      #
      #   @return [String]
      required :automation_id, String

      # @!attribute created_at
      #
      #   @return [String]
      required :created_at, String

      # @!attribute params
      #   Per-attachment parameters for swap automations.
      #
      #   @return [Privy::Models::SwapAttachmentParams, nil]
      required :params, -> { Privy::SwapAttachmentParams }, nil?: true

      # @!attribute status
      #   Automation lifecycle state: 'enabled' = running, 'disabled' = not running.
      #
      #   @return [Symbol, Privy::Models::WalletAutomationStatus]
      required :status, enum: -> { Privy::WalletAutomationStatus }

      # @!attribute updated_at
      #
      #   @return [String]
      required :updated_at, String

      # @!attribute wallet_id
      #
      #   @return [String]
      required :wallet_id, String

      # @!method initialize(id:, automation_id:, created_at:, params:, status:, updated_at:, wallet_id:)
      #   A wallet automation attachment linking an automation to a specific wallet.
      #
      #   @param id [String]
      #
      #   @param automation_id [String]
      #
      #   @param created_at [String]
      #
      #   @param params [Privy::Models::SwapAttachmentParams, nil] Per-attachment parameters for swap automations.
      #
      #   @param status [Symbol, Privy::Models::WalletAutomationStatus] Automation lifecycle state: 'enabled' = running, 'disabled' = not running.
      #
      #   @param updated_at [String]
      #
      #   @param wallet_id [String]
    end
  end
end
