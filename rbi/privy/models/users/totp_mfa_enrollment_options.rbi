# typed: strong

module Privy
  module Models
    module Users
      class TotpMfaEnrollmentOptions < Privy::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Privy::Users::TotpMfaEnrollmentOptions,
              Privy::Internal::AnyHash
            )
          end

        # Base32-encoded TOTP secret.
        sig { returns(String) }
        attr_accessor :secret

        # Authenticator setup URI using the otpauth scheme.
        sig { returns(String) }
        attr_accessor :uri

        # Authenticator setup information for TOTP MFA enrollment.
        sig { params(secret: String, uri: String).returns(T.attached_class) }
        def self.new(
          # Base32-encoded TOTP secret.
          secret:,
          # Authenticator setup URI using the otpauth scheme.
          uri:
        )
        end

        sig { override.returns({ secret: String, uri: String }) }
        def to_hash
        end
      end
    end
  end
end
