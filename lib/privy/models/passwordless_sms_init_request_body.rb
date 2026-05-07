# frozen_string_literal: true

module Privy
  module Models
    class PasswordlessSMSInitRequestBody < Privy::Internal::Type::BaseModel
      # @!attribute phone_number
      #
      #   @return [String]
      required :phone_number, String, api_name: :phoneNumber

      # @!attribute token
      #
      #   @return [String, nil]
      optional :token, String

      # @!method initialize(phone_number:, token: nil)
      #   The request body for initiating a passwordless sms ceremony.
      #
      #   @param phone_number [String]
      #   @param token [String]
    end
  end
end
