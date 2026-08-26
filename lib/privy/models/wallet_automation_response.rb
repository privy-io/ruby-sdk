# frozen_string_literal: true

module Privy
  module Models
    class WalletAutomationResponse < Privy::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute app_id
      #
      #   @return [String]
      required :app_id, String

      # @!attribute config
      #   Full configuration for a wallet automation (trigger + action).
      #
      #   @return [Privy::Models::AutomationConfig]
      required :config, -> { Privy::AutomationConfig }

      # @!attribute created_at
      #
      #   @return [String]
      required :created_at, String

      # @!attribute name
      #
      #   @return [String, nil]
      required :name, String, nil?: true

      # @!attribute owner_id
      #
      #   @return [String, nil]
      required :owner_id, String, nil?: true

      # @!attribute status
      #   Automation lifecycle state: 'enabled' = running, 'disabled' = not running.
      #
      #   @return [Symbol, Privy::Models::WalletAutomationStatus]
      required :status, enum: -> { Privy::WalletAutomationStatus }

      # @!attribute updated_at
      #
      #   @return [String]
      required :updated_at, String

      # @!method initialize(id:, app_id:, config:, created_at:, name:, owner_id:, status:, updated_at:)
      #   A wallet automation.
      #
      #   @param id [String]
      #
      #   @param app_id [String]
      #
      #   @param config [Privy::Models::AutomationConfig] Full configuration for a wallet automation (trigger + action).
      #
      #   @param created_at [String]
      #
      #   @param name [String, nil]
      #
      #   @param owner_id [String, nil]
      #
      #   @param status [Symbol, Privy::Models::WalletAutomationStatus] Automation lifecycle state: 'enabled' = running, 'disabled' = not running.
      #
      #   @param updated_at [String]
    end
  end
end
