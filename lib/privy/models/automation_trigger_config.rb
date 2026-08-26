# frozen_string_literal: true

module Privy
  module Models
    class AutomationTriggerConfig < Privy::Internal::Type::BaseModel
      # @!attribute assets
      #   Which assets to include/exclude for an automation trigger.
      #
      #   @return [Privy::Models::AutomationAssetFilterAll, Privy::Models::AutomationAssetFilterInclude, Privy::Models::AutomationAssetFilterExclude]
      required :assets, union: -> { Privy::AutomationAssetFilter }

      # @!attribute type
      #
      #   @return [Symbol, Privy::Models::AutomationTriggerConfig::Type]
      required :type, enum: -> { Privy::AutomationTriggerConfig::Type }

      # @!method initialize(assets:, type:)
      #   Trigger configuration for deposit events.
      #
      #   @param assets [Privy::Models::AutomationAssetFilterAll, Privy::Models::AutomationAssetFilterInclude, Privy::Models::AutomationAssetFilterExclude] Which assets to include/exclude for an automation trigger.
      #
      #   @param type [Symbol, Privy::Models::AutomationTriggerConfig::Type]

      # @see Privy::Models::AutomationTriggerConfig#type
      module Type
        extend Privy::Internal::Type::Enum

        DEPOSIT = :deposit

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
