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
      #   @return [Array<Privy::Models::PasskeyPubKeyCredParam>]
      required :pub_key_cred_params, -> { Privy::Internal::Type::ArrayOf[Privy::PasskeyPubKeyCredParam] }

      # @!attribute rp
      #   Relying party information for a WebAuthn ceremony.
      #
      #   @return [Privy::Models::PasskeyRelyingParty]
      required :rp, -> { Privy::PasskeyRelyingParty }

      # @!attribute user
      #   User entity for a WebAuthn registration ceremony.
      #
      #   @return [Privy::Models::PasskeyUser]
      required :user, -> { Privy::PasskeyUser }

      # @!attribute attestation
      #
      #   @return [String, nil]
      optional :attestation, String

      # @!attribute authenticator_selection
      #   Authenticator selection criteria for a WebAuthn registration ceremony.
      #
      #   @return [Privy::Models::PasskeyAuthenticatorSelection, nil]
      optional :authenticator_selection, -> { Privy::PasskeyAuthenticatorSelection }

      # @!attribute exclude_credentials
      #
      #   @return [Array<Privy::Models::PasskeyCredentialDescriptor>, nil]
      optional :exclude_credentials, -> { Privy::Internal::Type::ArrayOf[Privy::PasskeyCredentialDescriptor] }

      # @!attribute extensions
      #   Extensions for a WebAuthn registration ceremony.
      #
      #   @return [Privy::Models::PasskeyEnrollmentExtensions, nil]
      optional :extensions, -> { Privy::PasskeyEnrollmentExtensions }

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
      #   @param pub_key_cred_params [Array<Privy::Models::PasskeyPubKeyCredParam>]
      #
      #   @param rp [Privy::Models::PasskeyRelyingParty] Relying party information for a WebAuthn ceremony.
      #
      #   @param user [Privy::Models::PasskeyUser] User entity for a WebAuthn registration ceremony.
      #
      #   @param attestation [String]
      #
      #   @param authenticator_selection [Privy::Models::PasskeyAuthenticatorSelection] Authenticator selection criteria for a WebAuthn registration ceremony.
      #
      #   @param exclude_credentials [Array<Privy::Models::PasskeyCredentialDescriptor>]
      #
      #   @param extensions [Privy::Models::PasskeyEnrollmentExtensions] Extensions for a WebAuthn registration ceremony.
      #
      #   @param timeout [Float]
    end
  end
end
