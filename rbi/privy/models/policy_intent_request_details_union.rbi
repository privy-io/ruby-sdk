# typed: strong

module Privy
  module Models
    # The original policy request. Method is PATCH (update) or DELETE (delete).
    module PolicyIntentRequestDetailsUnion
      extend Privy::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Privy::PolicyIntentRequestDetails,
            Privy::PolicyIntentDeleteRequestDetails
          )
        end

      sig do
        override.returns(
          T::Array[Privy::PolicyIntentRequestDetailsUnion::Variants]
        )
      end
      def self.variants
      end
    end
  end
end
