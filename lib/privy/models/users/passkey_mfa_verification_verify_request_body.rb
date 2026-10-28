# frozen_string_literal: true

module Privy
  module Models
    module Users
      class PasskeyMfaVerificationVerifyRequestBody < Privy::Internal::Type::BaseModel
        # @!attribute credential
        #   WebAuthn authentication response as defined by the Web Authentication
        #   specification.
        #
        #   @return [Privy::Models::Users::MfaPasskeyAuthenticatorVerifyResponse]
        required :credential, -> { Privy::Users::MfaPasskeyAuthenticatorVerifyResponse }

        # @!method initialize(credential:)
        #   Some parameter documentations has been truncated, see
        #   {Privy::Models::Users::PasskeyMfaVerificationVerifyRequestBody} for more
        #   details.
        #
        #   Completes passkey MFA verification with a WebAuthn authentication response.
        #
        #   @param credential [Privy::Models::Users::MfaPasskeyAuthenticatorVerifyResponse] WebAuthn authentication response as defined by the Web Authentication specificat
      end
    end
  end
end
