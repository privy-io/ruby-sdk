# frozen_string_literal: true

module Privy
  module Models
    class AutomationDepositTriggerConfigInput < Privy::Internal::Type::BaseModel
      # @!attribute assets
      #   Which assets to include/exclude for an automation trigger (input form with alias
      #   support).
      #
      #   @return [Privy::Models::AutomationAssetFilterAll, Privy::Models::AutomationAssetFilterInputInclude, Privy::Models::AutomationAssetFilterInputExclude]
      required :assets, union: -> { Privy::AutomationAssetFilterInput }

      # @!attribute type
      #
      #   @return [Symbol, Privy::Models::AutomationDepositTriggerConfigInput::Type]
      required :type, enum: -> { Privy::AutomationDepositTriggerConfigInput::Type }

      # @!method initialize(assets:, type:)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::AutomationDepositTriggerConfigInput} for more details.
      #
      #   Trigger configuration for deposit events (input form with alias support).
      #
      #   @param assets [Privy::Models::AutomationAssetFilterAll, Privy::Models::AutomationAssetFilterInputInclude, Privy::Models::AutomationAssetFilterInputExclude] Which assets to include/exclude for an automation trigger (input form with alias
      #
      #   @param type [Symbol, Privy::Models::AutomationDepositTriggerConfigInput::Type]

      # @see Privy::Models::AutomationDepositTriggerConfigInput#type
      module Type
        extend Privy::Internal::Type::Enum

        DEPOSIT = :deposit

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
