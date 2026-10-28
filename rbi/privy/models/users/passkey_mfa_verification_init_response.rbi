# typed: strong

module Privy
  module Models
    module Users
      class PasskeyMfaVerificationInitResponse < Privy::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Privy::Users::PasskeyMfaVerificationInitResponse,
              Privy::Internal::AnyHash
            )
          end

        # WebAuthn authentication options as defined by the Web Authentication
        # specification.
        sig { returns(Privy::Users::MfaPasskeyAuthenticatorVerifyOptions) }
        attr_reader :options

        sig do
          params(
            options: Privy::Users::MfaPasskeyAuthenticatorVerifyOptions::OrHash
          ).void
        end
        attr_writer :options

        # WebAuthn authentication options for the started passkey MFA verification.
        sig do
          params(
            options: Privy::Users::MfaPasskeyAuthenticatorVerifyOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # WebAuthn authentication options as defined by the Web Authentication
          # specification.
          options:
        )
        end

        sig do
          override.returns(
            { options: Privy::Users::MfaPasskeyAuthenticatorVerifyOptions }
          )
        end
        def to_hash
        end
      end
    end
  end
end
