# frozen_string_literal: true

module Privy
  module Models
    class PasswordlessSMSUpdateRequestBody < Privy::Internal::Type::BaseModel
      # @!attribute code
      #
      #   @return [String]
      required :code, String

      # @!attribute new_phone_number
      #
      #   @return [String]
      required :new_phone_number, String

      # @!attribute old_phone_number
      #
      #   @return [String]
      required :old_phone_number, String

      # @!method initialize(code:, new_phone_number:, old_phone_number:)
      #   The request body for updating a passwordless sms account.
      #
      #   @param code [String]
      #   @param new_phone_number [String]
      #   @param old_phone_number [String]
    end
  end
end
