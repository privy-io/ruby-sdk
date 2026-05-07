# frozen_string_literal: true

module Privy
  module Models
    class AuthenticateJwtInput < Privy::Internal::Type::BaseModel
      # @!attribute token
      #
      #   @return [String, nil]
      optional :token, String

      # @!attribute mode
      #   Whether to allow sign-up during authentication.
      #
      #   @return [Symbol, Privy::Models::AuthenticateModeOption, nil]
      optional :mode, enum: -> { Privy::AuthenticateModeOption }

      # @!method initialize(token: nil, mode: nil)
      #   Input for authenticating with a custom JWT.
      #
      #   @param token [String]
      #
      #   @param mode [Symbol, Privy::Models::AuthenticateModeOption] Whether to allow sign-up during authentication.
    end
  end
end
