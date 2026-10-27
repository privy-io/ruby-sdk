# typed: strong

module Privy
  module Models
    module Users
      class TotpMfaVerifyRequestBody < Privy::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Privy::Users::TotpMfaVerifyRequestBody,
              Privy::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :code

        # Completes a TOTP MFA ceremony with a code from the authenticator.
        sig { params(code: String).returns(T.attached_class) }
        def self.new(code:)
        end

        sig { override.returns({ code: String }) }
        def to_hash
        end
      end
    end
  end
end
