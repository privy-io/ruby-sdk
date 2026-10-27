# frozen_string_literal: true

module Privy
  module Models
    module Users
      class TotpMfaEnrollmentInitResponse < Privy::Internal::Type::BaseModel
        # @!attribute options
        #   Authenticator setup information for TOTP MFA enrollment.
        #
        #   @return [Privy::Models::Users::TotpMfaEnrollmentOptions]
        required :options, -> { Privy::Users::TotpMfaEnrollmentOptions }

        # @!method initialize(options:)
        #   Authenticator setup information for the started TOTP MFA enrollment.
        #
        #   @param options [Privy::Models::Users::TotpMfaEnrollmentOptions] Authenticator setup information for TOTP MFA enrollment.
      end
    end
  end
end
