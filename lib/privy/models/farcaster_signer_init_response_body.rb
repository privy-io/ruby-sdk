# frozen_string_literal: true

module Privy
  module Models
    # The response body from initiating a Farcaster signer connection.
    module FarcasterSignerInitResponseBody
      extend Privy::Internal::Type::Union

      discriminator :status

      # A Farcaster signer init response when the signer is pending approval.
      variant :pending_approval, -> { Privy::FarcasterSignerInitPendingApproval }

      # A Farcaster signer response when the signer has been approved.
      variant :approved, -> { Privy::FarcasterSignerApproved }

      # A Farcaster signer response when the signer has been revoked.
      variant :revoked, -> { Privy::FarcasterSignerRevoked }

      # @!method self.variants
      #   @return [Array(Privy::Models::FarcasterSignerInitPendingApproval, Privy::Models::FarcasterSignerApproved, Privy::Models::FarcasterSignerRevoked)]
    end
  end
end
