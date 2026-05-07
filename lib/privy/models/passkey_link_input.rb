# frozen_string_literal: true

module Privy
  module Models
    class PasskeyLinkInput < Privy::Internal::Type::BaseModel
      # @!attribute authenticator_response
      #   WebAuthn registration response as defined by the Web Authentication
      #   specification.
      #
      #   @return [Privy::Models::PasskeyAuthenticatorEnrollmentResponse]
      required :authenticator_response, -> { Privy::PasskeyAuthenticatorEnrollmentResponse }

      # @!attribute relying_party
      #
      #   @return [String, nil]
      optional :relying_party, String

      # @!method initialize(authenticator_response:, relying_party: nil)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::PasskeyLinkInput} for more details.
      #
      #   Input for linking a passkey credential.
      #
      #   @param authenticator_response [Privy::Models::PasskeyAuthenticatorEnrollmentResponse] WebAuthn registration response as defined by the Web Authentication specificatio
      #
      #   @param relying_party [String]
    end
  end
end
