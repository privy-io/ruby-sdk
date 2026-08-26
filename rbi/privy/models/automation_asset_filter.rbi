# typed: strong

module Privy
  module Models
    # Which assets to include/exclude for an automation trigger.
    module AutomationAssetFilter
      extend Privy::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Privy::AutomationAssetFilterAll,
            Privy::AutomationAssetFilterInclude,
            Privy::AutomationAssetFilterExclude
          )
        end

      sig { override.returns(T::Array[Privy::AutomationAssetFilter::Variants]) }
      def self.variants
      end
    end
  end
end
