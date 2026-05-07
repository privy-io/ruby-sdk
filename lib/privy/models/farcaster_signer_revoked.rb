# frozen_string_literal: true

module Privy
  module Models
    class FarcasterSignerRevoked < Privy::Internal::Type::BaseModel
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
      #   @return [Symbol, Privy::Models::FarcasterSignerRevoked::Status]
      required :status, enum: -> { Privy::FarcasterSignerRevoked::Status }

      # @!method initialize(fid:, public_key:, status:)
      #   A Farcaster signer response when the signer has been revoked.
      #
      #   @param fid [String]
      #   @param public_key [String]
      #   @param status [Symbol, Privy::Models::FarcasterSignerRevoked::Status]

      # @see Privy::Models::FarcasterSignerRevoked#status
      module Status
        extend Privy::Internal::Type::Enum

        REVOKED = :revoked

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
