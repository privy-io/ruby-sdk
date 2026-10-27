# frozen_string_literal: true

module Privy
  module Models
    module Users
      class TotpMfaEnrollmentOptions < Privy::Internal::Type::BaseModel
        # @!attribute secret
        #   Base32-encoded TOTP secret.
        #
        #   @return [String]
        required :secret, String

        # @!attribute uri
        #   Authenticator setup URI using the otpauth scheme.
        #
        #   @return [String]
        required :uri, String

        # @!method initialize(secret:, uri:)
        #   Authenticator setup information for TOTP MFA enrollment.
        #
        #   @param secret [String] Base32-encoded TOTP secret.
        #
        #   @param uri [String] Authenticator setup URI using the otpauth scheme.
      end
    end
  end
end
