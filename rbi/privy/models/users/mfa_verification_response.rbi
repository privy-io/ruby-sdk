# typed: strong

module Privy
  module Models
    module Users
      class MfaVerificationResponse < Privy::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Privy::Users::MfaVerificationResponse,
              Privy::Internal::AnyHash
            )
          end

        # JWT proving the user completed MFA.
        sig { returns(String) }
        attr_accessor :token

        # Unix timestamp in seconds when the MFA token expires.
        sig { returns(Integer) }
        attr_accessor :expires_at

        # A Privy user object.
        sig { returns(Privy::User) }
        attr_reader :user

        sig { params(user: Privy::User::OrHash).void }
        attr_writer :user

        # An MFA token and the current user after completing an MFA ceremony.
        sig do
          params(
            token: String,
            expires_at: Integer,
            user: Privy::User::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # JWT proving the user completed MFA.
          token:,
          # Unix timestamp in seconds when the MFA token expires.
          expires_at:,
          # A Privy user object.
          user:
        )
        end

        sig do
          override.returns(
            { token: String, expires_at: Integer, user: Privy::User }
          )
        end
        def to_hash
        end
      end
    end
  end
end
