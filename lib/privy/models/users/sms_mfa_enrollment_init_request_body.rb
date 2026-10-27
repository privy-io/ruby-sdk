# frozen_string_literal: true

module Privy
  module Models
    module Users
      class SMSMfaEnrollmentInitRequestBody < Privy::Internal::Type::BaseModel
        # @!attribute phone_number
        #
        #   @return [String]
        required :phone_number, String

        # @!method initialize(phone_number:)
        #   Starts SMS MFA enrollment by sending a code to the phone number.
        #
        #   @param phone_number [String]
      end
    end
  end
end
