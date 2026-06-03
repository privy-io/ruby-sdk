# frozen_string_literal: true

module Privy
  module Models
    class OAuthGrantRevokeResponse < Privy::Internal::Type::BaseModel
      # @!attribute success
      #   Whether the revocation was processed.
      #
      #   @return [Boolean, Privy::Models::OAuthGrantRevokeResponse::Success]
      required :success, enum: -> { Privy::OAuthGrantRevokeResponse::Success }

      # @!method initialize(success:)
      #   Response from revoking an OAuth grant.
      #
      #   @param success [Boolean, Privy::Models::OAuthGrantRevokeResponse::Success] Whether the revocation was processed.

      # Whether the revocation was processed.
      #
      # @see Privy::Models::OAuthGrantRevokeResponse#success
      module Success
        extend Privy::Internal::Type::Enum

        TRUE = true

        # @!method self.values
        #   @return [Array<Boolean>]
      end
    end
  end
end
