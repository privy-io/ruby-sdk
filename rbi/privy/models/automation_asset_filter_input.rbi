# typed: strong

module Privy
  module Models
    # Which assets to include/exclude for an automation trigger (input form with alias
    # support).
    module AutomationAssetFilterInput
      extend Privy::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Privy::AutomationAssetFilterAll,
            Privy::AutomationAssetFilterInputInclude,
            Privy::AutomationAssetFilterInputExclude
          )
        end

      sig do
        override.returns(T::Array[Privy::AutomationAssetFilterInput::Variants])
      end
      def self.variants
      end
    end
  end
end
