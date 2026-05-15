# frozen_string_literal: true

module Privy
  module Models
    # The method used to recover an embedded wallet account.
    module EmbeddedWalletRecoveryMethod
      extend Privy::Internal::Type::Enum

      PRIVY = :privy
      USER_PASSCODE = :"user-passcode"
      GOOGLE_DRIVE = :"google-drive"
      ICLOUD = :icloud
      RECOVERY_ENCRYPTION_KEY = :"recovery-encryption-key"
      PRIVY_V2 = :"privy-v2"

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
