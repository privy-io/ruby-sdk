# typed: strong

module Privy
  module Models
    class MfaPasskeyInitResponseBody < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::MfaPasskeyInitResponseBody, Privy::Internal::AnyHash)
        end

      # WebAuthn authentication options as defined by the Web Authentication
      # specification.
      sig { returns(Privy::PasskeyAuthenticatorVerifyOptions) }
      attr_reader :options

      sig do
        params(options: Privy::PasskeyAuthenticatorVerifyOptions::OrHash).void
      end
      attr_writer :options

      sig { returns(T.nilable(String)) }
      attr_reader :relying_party

      sig { params(relying_party: String).void }
      attr_writer :relying_party

      # The response body for initializing a passkey MFA flow.
      sig do
        params(
          options: Privy::PasskeyAuthenticatorVerifyOptions::OrHash,
          relying_party: String
        ).returns(T.attached_class)
      end
      def self.new(
        # WebAuthn authentication options as defined by the Web Authentication
        # specification.
        options:,
        relying_party: nil
      )
      end

      sig do
        override.returns(
          {
            options: Privy::PasskeyAuthenticatorVerifyOptions,
            relying_party: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
