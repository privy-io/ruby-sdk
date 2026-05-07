# frozen_string_literal: true

module Privy
  module Models
    class PasswordlessAuthenticateRequestBody < Privy::Internal::Type::BaseModel
      # @!attribute code
      #
      #   @return [String]
      required :code, String

      # @!attribute email
      #
      #   @return [String]
      required :email, String

      # @!attribute mode
      #   Whether to allow sign-up during authentication.
      #
      #   @return [Symbol, Privy::Models::AuthenticateModeOption, nil]
      optional :mode, enum: -> { Privy::AuthenticateModeOption }

      # @!method initialize(code:, email:, mode: nil)
      #   The request body for authenticating a passwordless account.
      #
      #   @param code [String]
      #
      #   @param email [String]
      #
      #   @param mode [Symbol, Privy::Models::AuthenticateModeOption] Whether to allow sign-up during authentication.
    end
  end
end
