# typed: strong

module Privy
  module Models
    module Users
      class SMSMfaEnrollmentInitRequestBody < Privy::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Privy::Users::SMSMfaEnrollmentInitRequestBody,
              Privy::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :phone_number

        # Starts SMS MFA enrollment by sending a code to the phone number.
        sig { params(phone_number: String).returns(T.attached_class) }
        def self.new(phone_number:)
        end

        sig { override.returns({ phone_number: String }) }
        def to_hash
        end
      end
    end
  end
end
