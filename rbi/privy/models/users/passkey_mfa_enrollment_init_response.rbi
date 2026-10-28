# typed: strong

module Privy
  module Models
    module Users
      class PasskeyMfaEnrollmentInitResponse < Privy::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Privy::Users::PasskeyMfaEnrollmentInitResponse,
              Privy::Internal::AnyHash
            )
          end

        # WebAuthn registration options as defined by the Web Authentication
        # specification.
        sig { returns(Privy::Users::MfaPasskeyAuthenticatorEnrollmentOptions) }
        attr_reader :options

        sig do
          params(
            options:
              Privy::Users::MfaPasskeyAuthenticatorEnrollmentOptions::OrHash
          ).void
        end
        attr_writer :options

        # WebAuthn registration options for the started passkey MFA enrollment.
        sig do
          params(
            options:
              Privy::Users::MfaPasskeyAuthenticatorEnrollmentOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # WebAuthn registration options as defined by the Web Authentication
          # specification.
          options:
        )
        end

        sig do
          override.returns(
            { options: Privy::Users::MfaPasskeyAuthenticatorEnrollmentOptions }
          )
        end
        def to_hash
        end
      end
    end
  end
end
