# frozen_string_literal: true

module Privy
  module Models
    module Users
      class MfaVerificationResponse < Privy::Internal::Type::BaseModel
        # @!attribute token
        #   JWT proving the user completed MFA.
        #
        #   @return [String]
        required :token, String

        # @!attribute expires_at
        #   Unix timestamp in seconds when the MFA token expires.
        #
        #   @return [Integer]
        required :expires_at, Integer

        # @!attribute user
        #   A Privy user object.
        #
        #   @return [Privy::Models::User]
        required :user, -> { Privy::User }

        # @!method initialize(token:, expires_at:, user:)
        #   An MFA token and the current user after completing an MFA ceremony.
        #
        #   @param token [String] JWT proving the user completed MFA.
        #
        #   @param expires_at [Integer] Unix timestamp in seconds when the MFA token expires.
        #
        #   @param user [Privy::Models::User] A Privy user object.
      end
    end
  end
end
