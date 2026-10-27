# frozen_string_literal: true

module Privy
  module Models
    module Users
      class MfaPasskeyAuthenticatorVerifyOptions < Privy::Internal::Type::BaseModel
        # @!attribute challenge
        #
        #   @return [String]
        required :challenge, String

        # @!attribute allow_credentials
        #
        #   @return [Array<Privy::Models::Users::MfaPasskeyCredentialDescriptor>, nil]
        optional :allow_credentials,
                 -> { Privy::Internal::Type::ArrayOf[Privy::Users::MfaPasskeyCredentialDescriptor] }

        # @!attribute extensions
        #   Extensions for a WebAuthn authentication ceremony.
        #
        #   @return [Privy::Models::Users::MfaPasskeyVerifyExtensions, nil]
        optional :extensions, -> { Privy::Users::MfaPasskeyVerifyExtensions }

        # @!attribute rp_id
        #
        #   @return [String, nil]
        optional :rp_id, String

        # @!attribute timeout
        #
        #   @return [Float, nil]
        optional :timeout, Float

        # @!attribute user_verification
        #
        #   @return [String, nil]
        optional :user_verification, String

        # @!method initialize(challenge:, allow_credentials: nil, extensions: nil, rp_id: nil, timeout: nil, user_verification: nil)
        #   WebAuthn authentication options as defined by the Web Authentication
        #   specification.
        #
        #   @param challenge [String]
        #
        #   @param allow_credentials [Array<Privy::Models::Users::MfaPasskeyCredentialDescriptor>]
        #
        #   @param extensions [Privy::Models::Users::MfaPasskeyVerifyExtensions] Extensions for a WebAuthn authentication ceremony.
        #
        #   @param rp_id [String]
        #
        #   @param timeout [Float]
        #
        #   @param user_verification [String]
      end
    end
  end
end
