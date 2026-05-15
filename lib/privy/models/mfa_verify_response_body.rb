# frozen_string_literal: true

module Privy
  module Models
    class MfaVerifyResponseBody < Privy::Internal::Type::BaseModel
      # @!attribute token
      #
      #   @return [String]
      required :token, String

      # @!method initialize(token:)
      #   The response body for verifying a MFA code.
      #
      #   @param token [String]
    end
  end
end
