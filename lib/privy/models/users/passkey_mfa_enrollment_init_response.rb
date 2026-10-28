# frozen_string_literal: true

module Privy
  module Models
    module Users
      class PasskeyMfaEnrollmentInitResponse < Privy::Internal::Type::BaseModel
        # @!attribute options
        #   WebAuthn registration options as defined by the Web Authentication
        #   specification.
        #
        #   @return [Privy::Models::Users::MfaPasskeyAuthenticatorEnrollmentOptions]
        required :options, -> { Privy::Users::MfaPasskeyAuthenticatorEnrollmentOptions }

        # @!method initialize(options:)
        #   Some parameter documentations has been truncated, see
        #   {Privy::Models::Users::PasskeyMfaEnrollmentInitResponse} for more details.
        #
        #   WebAuthn registration options for the started passkey MFA enrollment.
        #
        #   @param options [Privy::Models::Users::MfaPasskeyAuthenticatorEnrollmentOptions] WebAuthn registration options as defined by the Web Authentication specification
      end
    end
  end
end
