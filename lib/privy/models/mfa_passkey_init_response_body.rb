# frozen_string_literal: true

module Privy
  module Models
    class MfaPasskeyInitResponseBody < Privy::Internal::Type::BaseModel
      # @!attribute options
      #   WebAuthn authentication options as defined by the Web Authentication
      #   specification.
      #
      #   @return [Privy::Models::PasskeyAuthenticatorVerifyOptions]
      required :options, -> { Privy::PasskeyAuthenticatorVerifyOptions }

      # @!attribute relying_party
      #
      #   @return [String, nil]
      optional :relying_party, String

      # @!method initialize(options:, relying_party: nil)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::MfaPasskeyInitResponseBody} for more details.
      #
      #   The response body for initializing a passkey MFA flow.
      #
      #   @param options [Privy::Models::PasskeyAuthenticatorVerifyOptions] WebAuthn authentication options as defined by the Web Authentication specificati
      #
      #   @param relying_party [String]
    end
  end
end
