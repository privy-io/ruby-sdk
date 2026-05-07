# frozen_string_literal: true

module Privy
  module Models
    class PasswordlessSMSUnlinkRequestBody < Privy::Internal::Type::BaseModel
      # @!attribute phone_number
      #
      #   @return [String]
      required :phone_number, String, api_name: :phoneNumber

      # @!method initialize(phone_number:)
      #   The request body for unlinking a passwordless sms account.
      #
      #   @param phone_number [String]
    end
  end
end
