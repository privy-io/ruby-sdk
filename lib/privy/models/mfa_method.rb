# frozen_string_literal: true

module Privy
  module Models
    # A multi-factor authentication method supported by the app.
    module MfaMethod
      extend Privy::Internal::Type::Enum

      SMS = :sms
      TOTP = :totp
      PASSKEY = :passkey

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
