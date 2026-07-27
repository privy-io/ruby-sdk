# frozen_string_literal: true

module Privy
  module Models
    class MfaEmailVerifyRequestBody < Privy::Internal::Type::BaseModel
      # @!attribute code
      #
      #   @return [String]
      required :code, String

      # @!method initialize(code:)
      #   The request body for verifying an email MFA code.
      #
      #   @param code [String]
    end
  end
end
