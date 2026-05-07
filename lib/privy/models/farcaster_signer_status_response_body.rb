# frozen_string_literal: true

module Privy
  module Models
    # The response body from checking the status of a Farcaster signer connection.
    module FarcasterSignerStatusResponseBody
      extend Privy::Internal::Type::Union

      discriminator :status

      # A Farcaster signer status response when the signer is pending approval.
      variant :pending_approval, -> { Privy::FarcasterSignerStatusPendingApproval }

      # A Farcaster signer response when the signer has been approved.
      variant :approved, -> { Privy::FarcasterSignerApproved }

      # A Farcaster signer response when the signer has been revoked.
      variant :revoked, -> { Privy::FarcasterSignerRevoked }

      # @!method self.variants
      #   @return [Array(Privy::Models::FarcasterSignerStatusPendingApproval, Privy::Models::FarcasterSignerApproved, Privy::Models::FarcasterSignerRevoked)]
    end
  end
end
