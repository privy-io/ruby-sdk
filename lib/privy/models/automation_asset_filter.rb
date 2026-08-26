# frozen_string_literal: true

module Privy
  module Models
    # Which assets to include/exclude for an automation trigger.
    module AutomationAssetFilter
      extend Privy::Internal::Type::Union

      discriminator :mode

      # Match all assets.
      variant :all, -> { Privy::AutomationAssetFilterAll }

      # Match only the specified assets.
      variant :include, -> { Privy::AutomationAssetFilterInclude }

      # Match all assets except the specified ones.
      variant :exclude, -> { Privy::AutomationAssetFilterExclude }

      # @!method self.variants
      #   @return [Array(Privy::Models::AutomationAssetFilterAll, Privy::Models::AutomationAssetFilterInclude, Privy::Models::AutomationAssetFilterExclude)]
    end
  end
end
