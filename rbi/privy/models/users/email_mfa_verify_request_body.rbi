# typed: strong

module Privy
  module Models
    module Users
      class EmailMfaVerifyRequestBody < Privy::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Privy::Users::EmailMfaVerifyRequestBody,
              Privy::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :code

        # Completes an email MFA ceremony with the code sent at init.
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
