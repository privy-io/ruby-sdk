# frozen_string_literal: true

module Privy
  module Models
    # The OAuth grant type for the token request.
    module OAuthTokenGrantType
      extend Privy::Internal::Type::Enum

      AUTHORIZATION_CODE = :authorization_code
      URN_IETF_PARAMS_OAUTH_GRANT_TYPE_DEVICE_CODE = :"urn:ietf:params:oauth:grant-type:device_code"
      REFRESH_TOKEN = :refresh_token

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
