# frozen_string_literal: true

module Privy
  module Models
    class PasskeyAuthenticateInput < Privy::Internal::Type::BaseModel
      # @!attribute authenticator_response
      #   WebAuthn authentication response as defined by the Web Authentication
      #   specification.
      #
      #   @return [Privy::Models::PasskeyAuthenticatorVerifyResponse]
      required :authenticator_response, -> { Privy::PasskeyAuthenticatorVerifyResponse }

      # @!attribute challenge
      #
      #   @return [String]
      required :challenge, String

      # @!attribute relying_party
      #
      #   @return [String, nil]
      optional :relying_party, String

      # @!method initialize(authenticator_response:, challenge:, relying_party: nil)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::PasskeyAuthenticateInput} for more details.
      #
      #   Input for authenticating with a passkey.
      #
      #   @param authenticator_response [Privy::Models::PasskeyAuthenticatorVerifyResponse] WebAuthn authentication response as defined by the Web Authentication specificat
      #
      #   @param challenge [String]
      #
      #   @param relying_party [String]
    end
  end
end
