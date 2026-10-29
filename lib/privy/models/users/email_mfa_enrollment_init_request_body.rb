# frozen_string_literal: true

module Privy
  module Models
    module Users
      class EmailMfaEnrollmentInitRequestBody < Privy::Internal::Type::BaseModel
        # @!attribute email_address
        #
        #   @return [String]
        required :email_address, String

        # @!method initialize(email_address:)
        #   Starts email MFA enrollment by sending a code to the email address.
        #
        #   @param email_address [String]
      end
    end
  end
end
