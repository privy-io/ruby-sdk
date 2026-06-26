# frozen_string_literal: true

module Privy
  module Models
    # Recovery method types for embedded wallet recovery setup webhooks.
    module WalletRecoverySetupMethod
      extend Privy::Internal::Type::Enum

      USER_PASSCODE_DERIVED_RECOVERY_KEY = :user_passcode_derived_recovery_key
      PRIVY_PASSCODE_DERIVED_RECOVERY_KEY = :privy_passcode_derived_recovery_key
      PRIVY_GENERATED_RECOVERY_KEY = :privy_generated_recovery_key
      GOOGLE_DRIVE_RECOVERY_SECRET = :google_drive_recovery_secret
      ICLOUD_RECOVERY_SECRET = :icloud_recovery_secret
      RECOVERY_ENCRYPTION_KEY = :recovery_encryption_key

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
