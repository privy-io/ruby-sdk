# typed: strong

module Privy
  module Models
    module Users
      class TotpMfaEnrollmentInitResponse < Privy::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Privy::Users::TotpMfaEnrollmentInitResponse,
              Privy::Internal::AnyHash
            )
          end

        # Authenticator setup information for TOTP MFA enrollment.
        sig { returns(Privy::Users::TotpMfaEnrollmentOptions) }
        attr_reader :options

        sig do
          params(options: Privy::Users::TotpMfaEnrollmentOptions::OrHash).void
        end
        attr_writer :options

        # Authenticator setup information for the started TOTP MFA enrollment.
        sig do
          params(
            options: Privy::Users::TotpMfaEnrollmentOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Authenticator setup information for TOTP MFA enrollment.
          options:
        )
        end

        sig do
          override.returns({ options: Privy::Users::TotpMfaEnrollmentOptions })
        end
        def to_hash
        end
      end
    end
  end
end
