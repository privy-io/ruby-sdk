# frozen_string_literal: true

module Privy
  module Models
    # A user-owned recovery option for embedded wallets.
    module UserOwnedRecoveryOption
      extend Privy::Internal::Type::Enum

      USER_PASSCODE = :"user-passcode"
      GOOGLE_DRIVE = :"google-drive"
      ICLOUD = :icloud

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
