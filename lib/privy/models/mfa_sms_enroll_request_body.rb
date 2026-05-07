# frozen_string_literal: true

module Privy
  module Models
    class MfaSMSEnrollRequestBody < Privy::Internal::Type::BaseModel
      # @!attribute code
      #
      #   @return [String]
      required :code, String

      # @!attribute phone_number
      #
      #   @return [String]
      required :phone_number, String, api_name: :phoneNumber

      # @!method initialize(code:, phone_number:)
      #   The request body for enrolling a SMS MFA code.
      #
      #   @param code [String]
      #   @param phone_number [String]
    end
  end
end
