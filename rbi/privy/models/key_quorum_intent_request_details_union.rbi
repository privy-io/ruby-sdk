# typed: strong

module Privy
  module Models
    # The original key quorum request. Method is PATCH (update) or DELETE (delete).
    module KeyQuorumIntentRequestDetailsUnion
      extend Privy::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Privy::KeyQuorumIntentRequestDetails,
            Privy::KeyQuorumIntentDeleteRequestDetails
          )
        end

      sig do
        override.returns(
          T::Array[Privy::KeyQuorumIntentRequestDetailsUnion::Variants]
        )
      end
      def self.variants
      end
    end
  end
end
