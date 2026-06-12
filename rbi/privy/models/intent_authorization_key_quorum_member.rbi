# typed: strong

module Privy
  module Models
    # A leaf member (user or key) of a nested key quorum in an intent authorization.
    module IntentAuthorizationKeyQuorumMember
      extend Privy::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Privy::IntentAuthorizationUserMember,
            Privy::IntentAuthorizationKeyMember
          )
        end

      sig do
        override.returns(
          T::Array[Privy::IntentAuthorizationKeyQuorumMember::Variants]
        )
      end
      def self.variants
      end
    end
  end
end
