# typed: strong

module Privy
  module Models
    module Users
      class PasskeyMfaVerificationVerifyRequestBody < Privy::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Privy::Users::PasskeyMfaVerificationVerifyRequestBody,
              Privy::Internal::AnyHash
            )
          end

        # WebAuthn authentication response as defined by the Web Authentication
        # specification.
        sig { returns(Privy::Users::MfaPasskeyAuthenticatorVerifyResponse) }
        attr_reader :credential

        sig do
          params(
            credential:
              Privy::Users::MfaPasskeyAuthenticatorVerifyResponse::OrHash
          ).void
        end
        attr_writer :credential

        # Completes passkey MFA verification with a WebAuthn authentication response.
        sig do
          params(
            credential:
              Privy::Users::MfaPasskeyAuthenticatorVerifyResponse::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # WebAuthn authentication response as defined by the Web Authentication
          # specification.
          credential:
        )
        end

        sig do
          override.returns(
            { credential: Privy::Users::MfaPasskeyAuthenticatorVerifyResponse }
          )
        end
        def to_hash
        end
      end
    end
  end
end
