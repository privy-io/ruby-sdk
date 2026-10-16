# typed: strong

module Privy
  module Models
    # The original condition set item request. Method is POST (add items), PUT
    # (replace items), or DELETE (delete an item)
    module ConditionSetItemIntentRequestDetails
      extend Privy::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Privy::ConditionSetItemIntentCreateRequestDetails,
            Privy::ConditionSetItemIntentUpdateRequestDetails,
            Privy::ConditionSetItemIntentDeleteRequestDetails
          )
        end

      sig do
        override.returns(
          T::Array[Privy::ConditionSetItemIntentRequestDetails::Variants]
        )
      end
      def self.variants
      end
    end
  end
end
