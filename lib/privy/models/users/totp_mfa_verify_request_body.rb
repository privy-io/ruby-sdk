# frozen_string_literal: true

module Privy
  module Models
    module Users
      class TotpMfaVerifyRequestBody < Privy::Internal::Type::BaseModel
        # @!attribute code
        #
        #   @return [String]
        required :code, String

        # @!method initialize(code:)
        #   Completes a TOTP MFA ceremony with a code from the authenticator.
        #
        #   @param code [String]
      end
    end
  end
end
