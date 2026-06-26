# frozen_string_literal: true

module Privy
  module Models
    # Error codes for the device authorization pending response per RFC 8628.
    module OAuthTokenDeviceCodePendingErrorCode
      extend Privy::Internal::Type::Enum

      AUTHORIZATION_PENDING = :authorization_pending
      SLOW_DOWN = :slow_down
      ACCESS_DENIED = :access_denied
      EXPIRED_TOKEN = :expired_token

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
