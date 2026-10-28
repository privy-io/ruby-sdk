# typed: strong

module Privy
  module Models
    module Users
      class PasskeyMfaEnrollmentVerifyRequestBody < Privy::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Privy::Users::PasskeyMfaEnrollmentVerifyRequestBody,
              Privy::Internal::AnyHash
            )
          end

        # WebAuthn registration response as defined by the Web Authentication
        # specification.
        sig { returns(Privy::Users::MfaPasskeyAuthenticatorEnrollmentResponse) }
        attr_reader :credential

        sig do
          params(
            credential:
              Privy::Users::MfaPasskeyAuthenticatorEnrollmentResponse::OrHash
          ).void
        end
        attr_writer :credential

        # Completes passkey MFA enrollment with a WebAuthn registration response.
        sig do
          params(
            credential:
              Privy::Users::MfaPasskeyAuthenticatorEnrollmentResponse::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # WebAuthn registration response as defined by the Web Authentication
          # specification.
          credential:
        )
        end

        sig do
          override.returns(
            {
              credential:
                Privy::Users::MfaPasskeyAuthenticatorEnrollmentResponse
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
