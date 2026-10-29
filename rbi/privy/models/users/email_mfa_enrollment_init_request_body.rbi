# typed: strong

module Privy
  module Models
    module Users
      class EmailMfaEnrollmentInitRequestBody < Privy::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Privy::Users::EmailMfaEnrollmentInitRequestBody,
              Privy::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :email_address

        # Starts email MFA enrollment by sending a code to the email address.
        sig { params(email_address: String).returns(T.attached_class) }
        def self.new(email_address:)
        end

        sig { override.returns({ email_address: String }) }
        def to_hash
        end
      end
    end
  end
end
