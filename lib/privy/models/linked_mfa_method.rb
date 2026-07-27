# frozen_string_literal: true

module Privy
  module Models
    # A multi-factor authentication method linked to the user.
    module LinkedMfaMethod
      extend Privy::Internal::Type::Union

      discriminator :type

      # A SMS MFA method.
      variant :sms, -> { Privy::SMSMfaMethod }

      # A TOTP MFA method.
      variant :totp, -> { Privy::TotpMfaMethod }

      # A Passkey MFA method.
      variant :passkey, -> { Privy::PasskeyMfaMethod }

      # An Email MFA method.
      variant :email, -> { Privy::EmailMfaMethod }

      # @!method self.variants
      #   @return [Array(Privy::Models::SMSMfaMethod, Privy::Models::TotpMfaMethod, Privy::Models::PasskeyMfaMethod, Privy::Models::EmailMfaMethod)]
    end
  end
end
