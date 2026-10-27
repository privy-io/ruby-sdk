# typed: strong

module Privy
  module Models
    class PasskeyAuthenticatorVerifyOptions < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::PasskeyAuthenticatorVerifyOptions,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :challenge

      sig do
        returns(
          T.nilable(T::Array[Privy::Users::MfaPasskeyCredentialDescriptor])
        )
      end
      attr_reader :allow_credentials

      sig do
        params(
          allow_credentials:
            T::Array[Privy::Users::MfaPasskeyCredentialDescriptor::OrHash]
        ).void
      end
      attr_writer :allow_credentials

      # Extensions for a WebAuthn authentication ceremony.
      sig { returns(T.nilable(Privy::Users::MfaPasskeyVerifyExtensions)) }
      attr_reader :extensions

      sig do
        params(
          extensions: Privy::Users::MfaPasskeyVerifyExtensions::OrHash
        ).void
      end
      attr_writer :extensions

      sig { returns(T.nilable(String)) }
      attr_reader :rp_id

      sig { params(rp_id: String).void }
      attr_writer :rp_id

      sig { returns(T.nilable(Float)) }
      attr_reader :timeout

      sig { params(timeout: Float).void }
      attr_writer :timeout

      sig { returns(T.nilable(String)) }
      attr_reader :user_verification

      sig { params(user_verification: String).void }
      attr_writer :user_verification

      # WebAuthn authentication options as defined by the Web Authentication
      # specification.
      sig do
        params(
          challenge: String,
          allow_credentials:
            T::Array[Privy::Users::MfaPasskeyCredentialDescriptor::OrHash],
          extensions: Privy::Users::MfaPasskeyVerifyExtensions::OrHash,
          rp_id: String,
          timeout: Float,
          user_verification: String
        ).returns(T.attached_class)
      end
      def self.new(
        challenge:,
        allow_credentials: nil,
        # Extensions for a WebAuthn authentication ceremony.
        extensions: nil,
        rp_id: nil,
        timeout: nil,
        user_verification: nil
      )
      end

      sig do
        override.returns(
          {
            challenge: String,
            allow_credentials:
              T::Array[Privy::Users::MfaPasskeyCredentialDescriptor],
            extensions: Privy::Users::MfaPasskeyVerifyExtensions,
            rp_id: String,
            timeout: Float,
            user_verification: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
