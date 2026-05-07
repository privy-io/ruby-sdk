# frozen_string_literal: true

module Privy
  module Models
    # The type of recovery mechanism used for wallet recovery.
    module RecoveryType
      extend Privy::Internal::Type::Enum

      USER_PASSCODE_DERIVED_RECOVERY_KEY = :user_passcode_derived_recovery_key
      PRIVY_PASSCODE_DERIVED_RECOVERY_KEY = :privy_passcode_derived_recovery_key
      PRIVY_GENERATED_RECOVERY_KEY = :privy_generated_recovery_key
      GOOGLE_DRIVE_RECOVERY_SECRET = :google_drive_recovery_secret
      ICLOUD_RECOVERY_SECRET = :icloud_recovery_secret

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
