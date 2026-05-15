# frozen_string_literal: true

module Privy
  module Models
    class FarcasterSignerApproved < Privy::Internal::Type::BaseModel
      # @!attribute fid
      #
      #   @return [String]
      required :fid, String

      # @!attribute public_key
      #
      #   @return [String]
      required :public_key, String

      # @!attribute status
      #
      #   @return [Symbol, Privy::Models::FarcasterSignerApproved::Status]
      required :status, enum: -> { Privy::FarcasterSignerApproved::Status }

      # @!method initialize(fid:, public_key:, status:)
      #   A Farcaster signer response when the signer has been approved.
      #
      #   @param fid [String]
      #   @param public_key [String]
      #   @param status [Symbol, Privy::Models::FarcasterSignerApproved::Status]

      # @see Privy::Models::FarcasterSignerApproved#status
      module Status
        extend Privy::Internal::Type::Enum

        APPROVED = :approved

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
