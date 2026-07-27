# frozen_string_literal: true

module Privy
  module Models
    class MfaEmailEnrollRequestBody < Privy::Internal::Type::BaseModel
      # @!attribute code
      #
      #   @return [String]
      required :code, String

      # @!attribute email_address
      #
      #   @return [String]
      required :email_address, String

      # @!method initialize(code:, email_address:)
      #   The request body for enrolling an email MFA code.
      #
      #   @param code [String]
      #   @param email_address [String]
    end
  end
end
