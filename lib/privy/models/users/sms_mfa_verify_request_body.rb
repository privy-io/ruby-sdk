# frozen_string_literal: true

module Privy
  module Models
    module Users
      class SMSMfaVerifyRequestBody < Privy::Internal::Type::BaseModel
        # @!attribute code
        #
        #   @return [String]
        required :code, String

        # @!method initialize(code:)
        #   Completes an SMS MFA ceremony with the code sent at init.
        #
        #   @param code [String]
      end
    end
  end
end
