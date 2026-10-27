# typed: strong

module Privy
  module Models
    class PasskeyAuthenticatorEnrollmentOptions < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::PasskeyAuthenticatorEnrollmentOptions,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :challenge

      sig { returns(T::Array[Privy::Users::MfaPasskeyPubKeyCredParam]) }
      attr_accessor :pub_key_cred_params

      # Relying party information for a WebAuthn ceremony.
      sig { returns(Privy::Users::MfaPasskeyRelyingParty) }
      attr_reader :rp

      sig { params(rp: Privy::Users::MfaPasskeyRelyingParty::OrHash).void }
      attr_writer :rp

      # User entity for a WebAuthn registration ceremony.
      sig { returns(Privy::Users::MfaPasskeyUser) }
      attr_reader :user

      sig { params(user: Privy::Users::MfaPasskeyUser::OrHash).void }
      attr_writer :user

      sig { returns(T.nilable(String)) }
      attr_reader :attestation

      sig { params(attestation: String).void }
      attr_writer :attestation

      # Authenticator selection criteria for a WebAuthn registration ceremony.
      sig { returns(T.nilable(Privy::Users::MfaPasskeyAuthenticatorSelection)) }
      attr_reader :authenticator_selection

      sig do
        params(
          authenticator_selection:
            Privy::Users::MfaPasskeyAuthenticatorSelection::OrHash
        ).void
      end
      attr_writer :authenticator_selection

      sig do
        returns(
          T.nilable(T::Array[Privy::Users::MfaPasskeyCredentialDescriptor])
        )
      end
      attr_reader :exclude_credentials

      sig do
        params(
          exclude_credentials:
            T::Array[Privy::Users::MfaPasskeyCredentialDescriptor::OrHash]
        ).void
      end
      attr_writer :exclude_credentials

      # Extensions for a WebAuthn registration ceremony.
      sig { returns(T.nilable(Privy::Users::MfaPasskeyEnrollmentExtensions)) }
      attr_reader :extensions

      sig do
        params(
          extensions: Privy::Users::MfaPasskeyEnrollmentExtensions::OrHash
        ).void
      end
      attr_writer :extensions

      sig { returns(T.nilable(Float)) }
      attr_reader :timeout

      sig { params(timeout: Float).void }
      attr_writer :timeout

      # WebAuthn registration options as defined by the Web Authentication
      # specification.
      sig do
        params(
          challenge: String,
          pub_key_cred_params:
            T::Array[Privy::Users::MfaPasskeyPubKeyCredParam::OrHash],
          rp: Privy::Users::MfaPasskeyRelyingParty::OrHash,
          user: Privy::Users::MfaPasskeyUser::OrHash,
          attestation: String,
          authenticator_selection:
            Privy::Users::MfaPasskeyAuthenticatorSelection::OrHash,
          exclude_credentials:
            T::Array[Privy::Users::MfaPasskeyCredentialDescriptor::OrHash],
          extensions: Privy::Users::MfaPasskeyEnrollmentExtensions::OrHash,
          timeout: Float
        ).returns(T.attached_class)
      end
      def self.new(
        challenge:,
        pub_key_cred_params:,
        # Relying party information for a WebAuthn ceremony.
        rp:,
        # User entity for a WebAuthn registration ceremony.
        user:,
        attestation: nil,
        # Authenticator selection criteria for a WebAuthn registration ceremony.
        authenticator_selection: nil,
        exclude_credentials: nil,
        # Extensions for a WebAuthn registration ceremony.
        extensions: nil,
        timeout: nil
      )
      end

      sig do
        override.returns(
          {
            challenge: String,
            pub_key_cred_params:
              T::Array[Privy::Users::MfaPasskeyPubKeyCredParam],
            rp: Privy::Users::MfaPasskeyRelyingParty,
            user: Privy::Users::MfaPasskeyUser,
            attestation: String,
            authenticator_selection:
              Privy::Users::MfaPasskeyAuthenticatorSelection,
            exclude_credentials:
              T::Array[Privy::Users::MfaPasskeyCredentialDescriptor],
            extensions: Privy::Users::MfaPasskeyEnrollmentExtensions,
            timeout: Float
          }
        )
      end
      def to_hash
      end
    end
  end
end
