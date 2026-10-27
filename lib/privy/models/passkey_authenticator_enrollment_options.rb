# frozen_string_literal: true

module Privy
  module Models
    class PasskeyAuthenticatorEnrollmentOptions < Privy::Internal::Type::BaseModel
      # @!attribute challenge
      #
      #   @return [String]
      required :challenge, String

      # @!attribute pub_key_cred_params
      #
      #   @return [Array<Privy::Models::Users::MfaPasskeyPubKeyCredParam>]
      required :pub_key_cred_params,
               -> { Privy::Internal::Type::ArrayOf[Privy::Users::MfaPasskeyPubKeyCredParam] }

      # @!attribute rp
      #   Relying party information for a WebAuthn ceremony.
      #
      #   @return [Privy::Models::Users::MfaPasskeyRelyingParty]
      required :rp, -> { Privy::Users::MfaPasskeyRelyingParty }

      # @!attribute user
      #   User entity for a WebAuthn registration ceremony.
      #
      #   @return [Privy::Models::Users::MfaPasskeyUser]
      required :user, -> { Privy::Users::MfaPasskeyUser }

      # @!attribute attestation
      #
      #   @return [String, nil]
      optional :attestation, String

      # @!attribute authenticator_selection
      #   Authenticator selection criteria for a WebAuthn registration ceremony.
      #
      #   @return [Privy::Models::Users::MfaPasskeyAuthenticatorSelection, nil]
      optional :authenticator_selection, -> { Privy::Users::MfaPasskeyAuthenticatorSelection }

      # @!attribute exclude_credentials
      #
      #   @return [Array<Privy::Models::Users::MfaPasskeyCredentialDescriptor>, nil]
      optional :exclude_credentials,
               -> { Privy::Internal::Type::ArrayOf[Privy::Users::MfaPasskeyCredentialDescriptor] }

      # @!attribute extensions
      #   Extensions for a WebAuthn registration ceremony.
      #
      #   @return [Privy::Models::Users::MfaPasskeyEnrollmentExtensions, nil]
      optional :extensions, -> { Privy::Users::MfaPasskeyEnrollmentExtensions }

      # @!attribute timeout
      #
      #   @return [Float, nil]
      optional :timeout, Float

      # @!method initialize(challenge:, pub_key_cred_params:, rp:, user:, attestation: nil, authenticator_selection: nil, exclude_credentials: nil, extensions: nil, timeout: nil)
      #   WebAuthn registration options as defined by the Web Authentication
      #   specification.
      #
      #   @param challenge [String]
      #
      #   @param pub_key_cred_params [Array<Privy::Models::Users::MfaPasskeyPubKeyCredParam>]
      #
      #   @param rp [Privy::Models::Users::MfaPasskeyRelyingParty] Relying party information for a WebAuthn ceremony.
      #
      #   @param user [Privy::Models::Users::MfaPasskeyUser] User entity for a WebAuthn registration ceremony.
      #
      #   @param attestation [String]
      #
      #   @param authenticator_selection [Privy::Models::Users::MfaPasskeyAuthenticatorSelection] Authenticator selection criteria for a WebAuthn registration ceremony.
      #
      #   @param exclude_credentials [Array<Privy::Models::Users::MfaPasskeyCredentialDescriptor>]
      #
      #   @param extensions [Privy::Models::Users::MfaPasskeyEnrollmentExtensions] Extensions for a WebAuthn registration ceremony.
      #
      #   @param timeout [Float]
    end
  end
end
