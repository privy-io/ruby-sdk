# frozen_string_literal: true

module Privy
  module Models
    module Users
      class PasskeyMfaVerificationInitResponse < Privy::Internal::Type::BaseModel
        # @!attribute options
        #   WebAuthn authentication options as defined by the Web Authentication
        #   specification.
        #
        #   @return [Privy::Models::Users::MfaPasskeyAuthenticatorVerifyOptions]
        required :options, -> { Privy::Users::MfaPasskeyAuthenticatorVerifyOptions }

        # @!method initialize(options:)
        #   Some parameter documentations has been truncated, see
        #   {Privy::Models::Users::PasskeyMfaVerificationInitResponse} for more details.
        #
        #   WebAuthn authentication options for the started passkey MFA verification.
        #
        #   @param options [Privy::Models::Users::MfaPasskeyAuthenticatorVerifyOptions] WebAuthn authentication options as defined by the Web Authentication specificati
      end
    end
  end
end
