# frozen_string_literal: true

module Privy
  module Models
    class MfaPasskeyVerifyRequestBody < Privy::Internal::Type::BaseModel
      # @!attribute authenticator_response
      #   WebAuthn authentication response as defined by the Web Authentication
      #   specification.
      #
      #   @return [Privy::Models::PasskeyAuthenticatorVerifyResponse]
      required :authenticator_response, -> { Privy::PasskeyAuthenticatorVerifyResponse }

      # @!attribute relying_party
      #
      #   @return [String, nil]
      optional :relying_party, String

      # @!method initialize(authenticator_response:, relying_party: nil)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::MfaPasskeyVerifyRequestBody} for more details.
      #
      #   The request body for verifying a passkey MFA flow.
      #
      #   @param authenticator_response [Privy::Models::PasskeyAuthenticatorVerifyResponse] WebAuthn authentication response as defined by the Web Authentication specificat
      #
      #   @param relying_party [String]
    end
  end
end
