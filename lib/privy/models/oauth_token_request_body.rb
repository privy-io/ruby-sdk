# frozen_string_literal: true

module Privy
  module Models
    # Request body for the OAuth token endpoint, discriminated by grant_type.
    module OAuthTokenRequestBody
      extend Privy::Internal::Type::Union

      discriminator :grant_type

      # Request body for the authorization_code grant type.
      variant :authorization_code, -> { Privy::OAuthTokenAuthorizationCodeRequestBody }

      # Request body for the urn:ietf:params:oauth:grant-type:device_code grant type (RFC 8628). Used by CLI clients to poll for authorization.
      variant :"urn:ietf:params:oauth:grant-type:device_code", -> { Privy::OAuthTokenDeviceCodeRequestBody }

      # Request body for the refresh_token grant type. Rotates the refresh token and issues a new access token.
      variant :refresh_token, -> { Privy::OAuthTokenRefreshTokenRequestBody }

      # @!method self.variants
      #   @return [Array(Privy::Models::OAuthTokenAuthorizationCodeRequestBody, Privy::Models::OAuthTokenDeviceCodeRequestBody, Privy::Models::OAuthTokenRefreshTokenRequestBody)]
    end
  end
end
