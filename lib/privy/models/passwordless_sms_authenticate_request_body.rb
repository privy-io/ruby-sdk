# frozen_string_literal: true

module Privy
  module Models
    class PasswordlessSMSAuthenticateRequestBody < Privy::Internal::Type::BaseModel
      # @!attribute code
      #
      #   @return [String]
      required :code, String

      # @!attribute phone_number
      #
      #   @return [String]
      required :phone_number, String, api_name: :phoneNumber

      # @!attribute mode
      #   Whether to allow sign-up during authentication.
      #
      #   @return [Symbol, Privy::Models::AuthenticateModeOption, nil]
      optional :mode, enum: -> { Privy::AuthenticateModeOption }

      # @!method initialize(code:, phone_number:, mode: nil)
      #   The request body for authenticating a passwordless sms account.
      #
      #   @param code [String]
      #
      #   @param phone_number [String]
      #
      #   @param mode [Symbol, Privy::Models::AuthenticateModeOption] Whether to allow sign-up during authentication.
    end
  end
end
