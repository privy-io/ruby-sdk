# frozen_string_literal: true

module Privy
  module Models
    class AuthenticateMode < Privy::Internal::Type::BaseModel
      # @!attribute mode
      #   Whether to allow sign-up during authentication.
      #
      #   @return [Symbol, Privy::Models::AuthenticateModeOption, nil]
      optional :mode, enum: -> { Privy::AuthenticateModeOption }

      # @!method initialize(mode: nil)
      #   The authentication mode settings for the ceremony.
      #
      #   @param mode [Symbol, Privy::Models::AuthenticateModeOption] Whether to allow sign-up during authentication.
    end
  end
end
