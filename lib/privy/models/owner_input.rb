# frozen_string_literal: true

module Privy
  module Models
    # The owner of the resource, specified as a Privy user ID, a P-256 public key, or
    # null to remove the current owner.
    module OwnerInput
      extend Privy::Internal::Type::Union

      # Owner input specifying a Privy user ID.
      variant -> { Privy::OwnerInputUser }

      # Owner input specifying a P-256 public key.
      variant -> { Privy::OwnerInputPublicKey }

      # @!method self.variants
      #   @return [Array(Privy::Models::OwnerInputUser, Privy::Models::OwnerInputPublicKey)]
    end
  end
end
