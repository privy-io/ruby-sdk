# frozen_string_literal: true

module Privy
  module Models
    class PasswordlessSMSTransferRequestBody < Privy::Internal::Type::BaseModel
      # @!attribute nonce
      #
      #   @return [String]
      required :nonce, String

      # @!attribute phone_number
      #
      #   @return [String]
      required :phone_number, String, api_name: :phoneNumber

      # @!method initialize(nonce:, phone_number:)
      #   The request body for transferring a passwordless sms account.
      #
      #   @param nonce [String]
      #   @param phone_number [String]
    end
  end
end
