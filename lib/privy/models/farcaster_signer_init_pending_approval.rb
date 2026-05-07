# frozen_string_literal: true

module Privy
  module Models
    class FarcasterSignerInitPendingApproval < Privy::Internal::Type::BaseModel
      # @!attribute public_key
      #
      #   @return [String]
      required :public_key, String

      # @!attribute signer_approval_url
      #
      #   @return [String]
      required :signer_approval_url, String

      # @!attribute status
      #
      #   @return [Symbol, Privy::Models::FarcasterSignerInitPendingApproval::Status]
      required :status, enum: -> { Privy::FarcasterSignerInitPendingApproval::Status }

      # @!method initialize(public_key:, signer_approval_url:, status:)
      #   A Farcaster signer init response when the signer is pending approval.
      #
      #   @param public_key [String]
      #   @param signer_approval_url [String]
      #   @param status [Symbol, Privy::Models::FarcasterSignerInitPendingApproval::Status]

      # @see Privy::Models::FarcasterSignerInitPendingApproval#status
      module Status
        extend Privy::Internal::Type::Enum

        PENDING_APPROVAL = :pending_approval

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
