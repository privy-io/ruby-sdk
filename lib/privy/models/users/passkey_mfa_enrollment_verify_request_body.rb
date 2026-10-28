# frozen_string_literal: true

module Privy
  module Models
    module Users
      class PasskeyMfaEnrollmentVerifyRequestBody < Privy::Internal::Type::BaseModel
        # @!attribute credential
        #   WebAuthn registration response as defined by the Web Authentication
        #   specification.
        #
        #   @return [Privy::Models::Users::MfaPasskeyAuthenticatorEnrollmentResponse]
        required :credential, -> { Privy::Users::MfaPasskeyAuthenticatorEnrollmentResponse }

        # @!method initialize(credential:)
        #   Some parameter documentations has been truncated, see
        #   {Privy::Models::Users::PasskeyMfaEnrollmentVerifyRequestBody} for more details.
        #
        #   Completes passkey MFA enrollment with a WebAuthn registration response.
        #
        #   @param credential [Privy::Models::Users::MfaPasskeyAuthenticatorEnrollmentResponse] WebAuthn registration response as defined by the Web Authentication specificatio
      end
    end
  end
end
