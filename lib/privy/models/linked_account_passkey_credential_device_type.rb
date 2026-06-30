# frozen_string_literal: true

module Privy
  module Models
    # WebAuthn credential device type indicating platform or cross-platform
    # authenticator residency.
    module LinkedAccountPasskeyCredentialDeviceType
      extend Privy::Internal::Type::Enum

      SINGLE_DEVICE = :singleDevice
      MULTI_DEVICE = :multiDevice

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
