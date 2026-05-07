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

      sig { returns(T::Array[Privy::PasskeyPubKeyCredParam]) }
      attr_accessor :pub_key_cred_params

      # Relying party information for a WebAuthn ceremony.
      sig { returns(Privy::PasskeyRelyingParty) }
      attr_reader :rp

      sig { params(rp: Privy::PasskeyRelyingParty::OrHash).void }
      attr_writer :rp

      # User entity for a WebAuthn registration ceremony.
      sig { returns(Privy::PasskeyUser) }
      attr_reader :user

      sig { params(user: Privy::PasskeyUser::OrHash).void }
      attr_writer :user

      sig { returns(T.nilable(String)) }
      attr_reader :attestation

      sig { params(attestation: String).void }
      attr_writer :attestation

      # Authenticator selection criteria for a WebAuthn registration ceremony.
      sig { returns(T.nilable(Privy::PasskeyAuthenticatorSelection)) }
      attr_reader :authenticator_selection

      sig do
        params(
          authenticator_selection: Privy::PasskeyAuthenticatorSelection::OrHash
        ).void
      end
      attr_writer :authenticator_selection

      sig { returns(T.nilable(T::Array[Privy::PasskeyCredentialDescriptor])) }
      attr_reader :exclude_credentials

      sig do
        params(
          exclude_credentials:
            T::Array[Privy::PasskeyCredentialDescriptor::OrHash]
        ).void
      end
      attr_writer :exclude_credentials

      # Extensions for a WebAuthn registration ceremony.
      sig { returns(T.nilable(Privy::PasskeyEnrollmentExtensions)) }
      attr_reader :extensions

      sig do
        params(extensions: Privy::PasskeyEnrollmentExtensions::OrHash).void
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
          pub_key_cred_params: T::Array[Privy::PasskeyPubKeyCredParam::OrHash],
          rp: Privy::PasskeyRelyingParty::OrHash,
          user: Privy::PasskeyUser::OrHash,
          attestation: String,
          authenticator_selection: Privy::PasskeyAuthenticatorSelection::OrHash,
          exclude_credentials:
            T::Array[Privy::PasskeyCredentialDescriptor::OrHash],
          extensions: Privy::PasskeyEnrollmentExtensions::OrHash,
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
            pub_key_cred_params: T::Array[Privy::PasskeyPubKeyCredParam],
            rp: Privy::PasskeyRelyingParty,
            user: Privy::PasskeyUser,
            attestation: String,
            authenticator_selection: Privy::PasskeyAuthenticatorSelection,
            exclude_credentials: T::Array[Privy::PasskeyCredentialDescriptor],
            extensions: Privy::PasskeyEnrollmentExtensions,
            timeout: Float
          }
        )
      end
      def to_hash
      end
    end
  end
end
