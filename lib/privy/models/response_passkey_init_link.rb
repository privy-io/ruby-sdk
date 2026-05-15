# frozen_string_literal: true

module Privy
  module Models
    class ResponsePasskeyInitLink < Privy::Internal::Type::BaseModel
      # @!attribute options
      #   WebAuthn registration options as defined by the Web Authentication
      #   specification.
      #
      #   @return [Privy::Models::PasskeyAuthenticatorEnrollmentOptions]
      required :options, -> { Privy::PasskeyAuthenticatorEnrollmentOptions }

      # @!attribute relying_party
      #
      #   @return [String, nil]
      optional :relying_party, String

      # @!method initialize(options:, relying_party: nil)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::ResponsePasskeyInitLink} for more details.
      #
      #   Response for initiating a passkey link ceremony.
      #
      #   @param options [Privy::Models::PasskeyAuthenticatorEnrollmentOptions] WebAuthn registration options as defined by the Web Authentication specification
      #
      #   @param relying_party [String]
    end
  end
end
