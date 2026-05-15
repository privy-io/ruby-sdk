# frozen_string_literal: true

module Privy
  module Models
    class FarcasterSignerStatusPendingApproval < Privy::Internal::Type::BaseModel
      # @!attribute public_key
      #
      #   @return [String]
      required :public_key, String

      # @!attribute status
      #
      #   @return [Symbol, Privy::Models::FarcasterSignerStatusPendingApproval::Status]
      required :status, enum: -> { Privy::FarcasterSignerStatusPendingApproval::Status }

      # @!method initialize(public_key:, status:)
      #   A Farcaster signer status response when the signer is pending approval.
      #
      #   @param public_key [String]
      #   @param status [Symbol, Privy::Models::FarcasterSignerStatusPendingApproval::Status]

      # @see Privy::Models::FarcasterSignerStatusPendingApproval#status
      module Status
        extend Privy::Internal::Type::Enum

        PENDING_APPROVAL = :pending_approval

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
