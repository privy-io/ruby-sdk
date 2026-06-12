# frozen_string_literal: true

module Privy
  module Models
    # A leaf member (user or key) of a nested key quorum in an intent authorization.
    module IntentAuthorizationKeyQuorumMember
      extend Privy::Internal::Type::Union

      discriminator :type

      # A user member of an intent authorization quorum.
      variant :user, -> { Privy::IntentAuthorizationUserMember }

      # A key member of an intent authorization quorum.
      variant :key, -> { Privy::IntentAuthorizationKeyMember }

      # @!method self.variants
      #   @return [Array(Privy::Models::IntentAuthorizationUserMember, Privy::Models::IntentAuthorizationKeyMember)]
    end
  end
end
