# frozen_string_literal: true

module Privy
  module Models
    # Whether to allow sign-up during authentication.
    module AuthenticateModeOption
      extend Privy::Internal::Type::Enum

      NO_SIGNUP = :"no-signup"
      LOGIN_OR_SIGN_UP = :"login-or-sign-up"

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
