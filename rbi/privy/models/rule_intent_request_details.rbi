# typed: strong

module Privy
  module Models
    # The original rule request. Method is POST (create), PATCH (update), or DELETE
    # (delete)
    module RuleIntentRequestDetails
      extend Privy::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Privy::RuleIntentCreateRequestDetails,
            Privy::RuleIntentUpdateRequestDetails,
            Privy::RuleIntentDeleteRequestDetails
          )
        end

      sig do
        override.returns(T::Array[Privy::RuleIntentRequestDetails::Variants])
      end
      def self.variants
      end
    end
  end
end
