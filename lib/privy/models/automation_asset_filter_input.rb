# frozen_string_literal: true

module Privy
  module Models
    # Which assets to include/exclude for an automation trigger (input form with alias
    # support).
    module AutomationAssetFilterInput
      extend Privy::Internal::Type::Union

      discriminator :mode

      # Match all assets.
      variant :all, -> { Privy::AutomationAssetFilterAll }

      # Match only the specified assets (input form with alias support).
      variant :include, -> { Privy::AutomationAssetFilterInputInclude }

      # Match all assets except the specified ones (input form with alias support).
      variant :exclude, -> { Privy::AutomationAssetFilterInputExclude }

      # @!method self.variants
      #   @return [Array(Privy::Models::AutomationAssetFilterAll, Privy::Models::AutomationAssetFilterInputInclude, Privy::Models::AutomationAssetFilterInputExclude)]
    end
  end
end
