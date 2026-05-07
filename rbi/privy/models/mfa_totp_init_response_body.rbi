# typed: strong

module Privy
  module Models
    class MfaTotpInitResponseBody < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::MfaTotpInitResponseBody, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :totp_auth_url

      sig { returns(String) }
      attr_accessor :totp_secret

      # The response body for initializing a TOTP MFA code.
      sig do
        params(totp_auth_url: String, totp_secret: String).returns(
          T.attached_class
        )
      end
      def self.new(totp_auth_url:, totp_secret:)
      end

      sig { override.returns({ totp_auth_url: String, totp_secret: String }) }
      def to_hash
      end
    end
  end
end
