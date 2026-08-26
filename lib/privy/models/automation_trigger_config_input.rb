# frozen_string_literal: true

module Privy
  module Models
    class AutomationTriggerConfigInput < Privy::Internal::Type::BaseModel
      # @!attribute assets
      #   Which assets to include/exclude for an automation trigger (input form with alias
      #   support).
      #
      #   @return [Privy::Models::AutomationAssetFilterAll, Privy::Models::AutomationAssetFilterInputInclude, Privy::Models::AutomationAssetFilterInputExclude]
      required :assets, union: -> { Privy::AutomationAssetFilterInput }

      # @!attribute type
      #
      #   @return [Symbol, Privy::Models::AutomationTriggerConfigInput::Type]
      required :type, enum: -> { Privy::AutomationTriggerConfigInput::Type }

      # @!method initialize(assets:, type:)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::AutomationTriggerConfigInput} for more details.
      #
      #   Trigger configuration for deposit events (input form with alias support).
      #
      #   @param assets [Privy::Models::AutomationAssetFilterAll, Privy::Models::AutomationAssetFilterInputInclude, Privy::Models::AutomationAssetFilterInputExclude] Which assets to include/exclude for an automation trigger (input form with alias
      #
      #   @param type [Symbol, Privy::Models::AutomationTriggerConfigInput::Type]

      # @see Privy::Models::AutomationTriggerConfigInput#type
      module Type
        extend Privy::Internal::Type::Enum

        DEPOSIT = :deposit

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
