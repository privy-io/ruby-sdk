# frozen_string_literal: true

module Privy
  module Models
    class MfaSMSVerifyRequestBody < Privy::Internal::Type::BaseModel
      # @!attribute code
      #
      #   @return [String]
      required :code, String

      # @!method initialize(code:)
      #   The request body for verifying a SMS MFA code.
      #
      #   @param code [String]
    end
  end
end
