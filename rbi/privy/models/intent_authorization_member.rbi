# typed: strong

module Privy
  module Models
    # A member of an intent authorization quorum. Can be a user, key, or nested key
    # quorum.
    module IntentAuthorizationMember
      extend Privy::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Privy::IntentAuthorizationUserMember,
            Privy::IntentAuthorizationKeyMember,
            Privy::IntentAuthorizationKeyQuorum
          )
        end

      sig do
        override.returns(T::Array[Privy::IntentAuthorizationMember::Variants])
      end
      def self.variants
      end
    end
  end
end
