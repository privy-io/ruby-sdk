# frozen_string_literal: true

module Privy
  module Models
    # A member of an intent authorization quorum. Can be a user, key, or nested key
    # quorum.
    module IntentAuthorizationMember
      extend Privy::Internal::Type::Union

      discriminator :type

      # A user member of an intent authorization quorum.
      variant :user, -> { Privy::IntentAuthorizationUserMember }

      # A key member of an intent authorization quorum.
      variant :key, -> { Privy::IntentAuthorizationKeyMember }

      # A nested key quorum member of an intent authorization quorum.
      variant :key_quorum, -> { Privy::IntentAuthorizationKeyQuorum }

      # @!method self.variants
      #   @return [Array(Privy::Models::IntentAuthorizationUserMember, Privy::Models::IntentAuthorizationKeyMember, Privy::Models::IntentAuthorizationKeyQuorum)]
    end
  end
end
